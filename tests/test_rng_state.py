from impy.kinematics import FixedTarget, CenterOfMass
from impy.constants import TeV, GeV
import impy.models as im
import pickle
from pathlib import Path
import pytest
from .util import (
    run_in_separate_process,
    xfail_on_ci_if_model_is_incompatible,
    get_all_models,
)

# generate list of all models in impy.models
models = get_all_models(im)


def rng_state_test(model):

    if model is im.Sophia20:
        evt_kin = FixedTarget(13 * TeV, "photon", "proton")
    elif model is im.UrQMD34:
        evt_kin = CenterOfMass(50 * GeV, "proton", "proton")
    else:
        evt_kin = CenterOfMass(13 * TeV, "proton", "proton")

    generator = model(evt_kin, seed=1)
    nevents = 10
    rng_state_file = type(generator).__name__ + "_rng_state.dat"

    # Save a initial state to a variable:
    state0 = generator.random_state.copy()

    # Generate nevents events
    counters = []
    for event in generator(nevents):
        counters.append(generator.random_state.counter)

    # Save generator state after nevents to a file
    with open(rng_state_file, "wb") as pfile:
        pickle.dump(generator.random_state, pfile, protocol=pickle.HIGHEST_PROTOCOL)

    # Restore initial state from variable
    generator.random_state = state0

    # And compare counters after each generated event
    i = 0
    for event in generator(nevents):
        counter = generator.random_state.counter
        assert counters[i] == counter, (
            f"Counters for seed {generator.random_state.seed} "
            f"after {i} event are different\n"
            f"  expected(previous) = {counters[i]}, received(current) = {counter}"
        )
        i = i + 1

    # Test for restoring state from file:
    state_after_now = generator.random_state.copy()
    # Restore from file
    with open(rng_state_file, "rb") as pfile:
        generator.random_state = pickle.load(pfile)

    if Path(rng_state_file).exists():
        Path(rng_state_file).unlink()

    # And check for equality
    state_equal = None
    if state_after_now == generator.random_state:
        state_equal = True
    else:
        state_equal = False
    assert state_equal, "Restored state from file is different from obtained"


@pytest.mark.parametrize("Model", models)
def test_generator(Model):
    xfail_on_ci_if_model_is_incompatible(Model)
    run_in_separate_process(rng_state_test, Model)

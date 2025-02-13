C     -*- fortran -*-
C     This file is autogenerated with f2py (version:2)
C     It contains Fortran 77 wrappers to fortran functions.

      subroutine f2pywrapsectnu (sectnuf2pywrap, e0n, iap, iat)
      external sectnu
      double precision e0n
      integer iap
      integer iat
      double precision sectnuf2pywrap, sectnu
      sectnuf2pywrap = sectnu(e0n, iap, iat)
      end


      subroutine f2pyinitxsect(setupfunc)
      external setupfunc
      double precision gsect(10,5,4)
      common /xsect/ gsect
      call setupfunc(gsect)
      end

      subroutine f2pyinitarea1(setupfunc)
      external setupfunc
      integer ia(2)
      integer icz
      integer icp
      common /area1/ ia,icz,icp
      call setupfunc(ia,icz,icp)
      end

      subroutine f2pyinitarea5(setupfunc)
      external setupfunc
      double precision rd(2)
      double precision cr1(2)
      double precision cr2(2)
      double precision cr3(2)
      common /area5/ rd,cr1,cr2,cr3
      call setupfunc(rd,cr1,cr2,cr3)
      end

      subroutine f2pyinitarea6(setupfunc)
      external setupfunc
      double precision pi
      double precision bm
      double precision am
      common /area6/ pi,bm,am
      call setupfunc(pi,bm,am)
      end

      subroutine f2pyinitarea7(setupfunc)
      external setupfunc
      double precision rp1
      common /area7/ rp1
      call setupfunc(rp1)
      end

      subroutine f2pyinitarea10(setupfunc)
      external setupfunc
      double precision stmass
      double precision am0
      double precision amn
      double precision amk
      double precision amc
      double precision amlamc
      double precision amlam
      double precision ameta
      common /area10/ stmass,am0,amn,amk,amc,amlamc,amlam,ameta
      call setupfunc(stmass,am0,amn,amk,amc,amlamc,amlam,ameta)
      end

      subroutine f2pyinitarea15(setupfunc)
      external setupfunc
      double precision fp(5)
      double precision rq(5)
      double precision cd(5)
      common /area15/ fp,rq,cd
      call setupfunc(fp,rq,cd)
      end

      subroutine f2pyinitarea16(setupfunc)
      external setupfunc
      double precision cc(5)
      common /area16/ cc
      call setupfunc(cc)
      end

      subroutine f2pyinitarea17(setupfunc)
      external setupfunc
      double precision del
      double precision rs
      double precision rs0
      double precision fs
      double precision alfp
      double precision rr
      double precision sh
      double precision delh
      common /area17/ del,rs,rs0,fs,alfp,rr,sh,delh
      call setupfunc(del,rs,rs0,fs,alfp,rr,sh,delh)
      end

      subroutine f2pyinitarea18(setupfunc)
      external setupfunc
      double precision alm
      double precision qt0
      double precision qlog
      double precision qll
      double precision aqt0
      double precision qtf
      double precision bet
      double precision amj0
      common /area18/ alm,qt0,qlog,qll,aqt0,qtf,bet,amj0
      call setupfunc(alm,qt0,qlog,qll,aqt0,qtf,bet,amj0)
      end

      subroutine f2pyinitarea19(setupfunc)
      external setupfunc
      double precision ahl(5)
      common /area19/ ahl
      call setupfunc(ahl)
      end

      subroutine f2pyinitarea22(setupfunc)
      external setupfunc
      double precision sjv0
      double precision fjs0(5,3)
      common /area22/ sjv0,fjs0
      call setupfunc(sjv0,fjs0)
      end

      subroutine f2pyinitarea23(setupfunc)
      external setupfunc
      double precision rjv(50)
      common /area23/ rjv
      call setupfunc(rjv)
      end

      subroutine f2pyinitarea24(setupfunc)
      external setupfunc
      double precision rjs(50,5,10)
      common /area24/ rjs
      call setupfunc(rjs)
      end

      subroutine f2pyinitarea27(setupfunc)
      external setupfunc
      double precision fp0(5)
      common /area27/ fp0
      call setupfunc(fp0)
      end

      subroutine f2pyinitarea28(setupfunc)
      external setupfunc
      double precision arr(4)
      common /area28/ arr
      call setupfunc(arr)
      end

      subroutine f2pyinitarea29(setupfunc)
      external setupfunc
      double precision cstot(17,17,68)
      common /area29/ cstot
      call setupfunc(cstot)
      end

      subroutine f2pyinitarea30(setupfunc)
      external setupfunc
      double precision cs0(17,17,68)
      common /area30/ cs0
      call setupfunc(cs0)
      end

      subroutine f2pyinitarea31(setupfunc)
      external setupfunc
      double precision csborn(17,68)
      common /area31/ csborn
      call setupfunc(csborn)
      end

      subroutine f2pyinitarea32(setupfunc)
      external setupfunc
      double precision csq(17,2,2)
      double precision csbq(17,2,2)
      common /area32/ csq,csbq
      call setupfunc(csq,csbq)
      end

      subroutine f2pyinitarea33(setupfunc)
      external setupfunc
      double precision fsud(10,2)
      common /area33/ fsud
      call setupfunc(fsud)
      end

      subroutine f2pyinitarea34(setupfunc)
      external setupfunc
      double precision qrt(10,101,2)
      common /area34/ qrt
      call setupfunc(qrt)
      end

      subroutine f2pyinitarea35(setupfunc)
      external setupfunc
      double precision sjv(10,5)
      double precision fjs(10,5,15)
      common /area35/ sjv,fjs
      call setupfunc(sjv,fjs)
      end

      subroutine f2pyinitarea39(setupfunc)
      external setupfunc
      integer jcalc
      common /area39/ jcalc
      call setupfunc(jcalc)
      end

      subroutine f2pyinitarea40(setupfunc)
      external setupfunc
      integer jdifr
      common /area40/ jdifr
      call setupfunc(jdifr)
      end

      subroutine f2pyinitarea41(setupfunc)
      external setupfunc
      character ty(5,7)
      common /area41/ ty
      call setupfunc(ty)
      end

      subroutine f2pyinitarea43(setupfunc)
      external setupfunc
      integer moniou
      common /area43/ moniou
      call setupfunc(moniou)
      end

      subroutine f2pyinitdebug(setupfunc)
      external setupfunc
      integer debug
      common /debug/ debug
      call setupfunc(debug)
      end

      subroutine f2pyinitarea44(setupfunc)
      external setupfunc
      double precision gz(10,5,4)
      double precision gzp(10,5,4)
      common /area44/ gz,gzp
      call setupfunc(gz,gzp)
      end

      subroutine f2pyinitar1(setupfunc)
      external setupfunc
      double precision anorm
      common /ar1/ anorm
      call setupfunc(anorm)
      end

      subroutine f2pyinitar2(setupfunc)
      external setupfunc
      double precision rrr
      double precision rrrm
      common /ar2/ rrr,rrrm
      call setupfunc(rrr,rrrm)
      end

      subroutine f2pyinitarea48(setupfunc)
      external setupfunc
      double precision asect(10,6,4)
      common /area48/ asect
      call setupfunc(asect)
      end

      subroutine f2pyinitversion(setupfunc)
      external setupfunc
      double precision version
      common /version/ version
      call setupfunc(version)
      end

      subroutine f2pyinitarea2(setupfunc)
      external setupfunc
      double precision s
      double precision y0
      double precision wp0
      double precision wm0
      common /area2/ s,y0,wp0,wm0
      call setupfunc(s,y0,wp0,wm0)
      end

      subroutine f2pyinitarea9(setupfunc)
      external setupfunc
      integer lqa(56)
      integer lqb(56)
      integer nqs(1000)
      integer ias(1000)
      integer ibs(1000)
      integer lha(56)
      integer lhb(56)
      double precision zh(4000)
      integer iah(4000)
      integer ibh(4000)
      integer iqh(4000)
      integer lva(56)
      integer lvb(56)
      common /area9/ lqa,lqb,nqs,ias,ibs,lha,lhb,zh,iah,ibh,iqh,lv
     &a,lvb
      call setupfunc(lqa,lqb,nqs,ias,ibs,lha,lhb,zh,iah,ibh,iqh,lv
     &a,lvb)
      end

      subroutine f2pyinitarea11(setupfunc)
      external setupfunc
      double precision b10
      common /area11/ b10
      call setupfunc(b10)
      end

      subroutine f2pyinitarea12(setupfunc)
      external setupfunc
      integer nsp
      common /area12/ nsp
      call setupfunc(nsp)
      end

      subroutine f2pyinitarea45(setupfunc)
      external setupfunc
      double precision gdt
      double precision gdp
      common /area45/ gdt,gdp
      call setupfunc(gdt,gdp)
      end

      subroutine f2pyinitarea99(setupfunc)
      external setupfunc
      integer nwt
      common /area99/ nwt
      call setupfunc(nwt)
      end

      subroutine f2pyinitarea4(setupfunc)
      external setupfunc
      double precision ey0(3)
      common /area4/ ey0
      call setupfunc(ey0)
      end

      subroutine f2pyinitarea14(setupfunc)
      external setupfunc
      double precision esp(4,95000)
      integer ich(95000)
      common /area14/ esp,ich
      call setupfunc(esp,ich)
      end

      subroutine f2pyinitar3(setupfunc)
      external setupfunc
      double precision x1(7)
      double precision a1(7)
      common /ar3/ x1,a1
      call setupfunc(x1,a1)
      end

      subroutine f2pyinitar5(setupfunc)
      external setupfunc
      double precision x5(2)
      double precision a5(2)
      common /ar5/ x5,a5
      call setupfunc(x5,a5)
      end

      subroutine f2pyinitar8(setupfunc)
      external setupfunc
      double precision x2(4)
      double precision a2
      common /ar8/ x2,a2
      call setupfunc(x2,a2)
      end

      subroutine f2pyinitar9(setupfunc)
      external setupfunc
      double precision x9(3)
      double precision a9(3)
      common /ar9/ x9,a9
      call setupfunc(x9,a9)
      end

      subroutine f2pyinitarea8(setupfunc)
      external setupfunc
      double precision wwm
      double precision be(4)
      double precision dc(5)
      double precision deta
      double precision almpt
      common /area8/ wwm,be,dc,deta,almpt
      call setupfunc(wwm,be,dc,deta,almpt)
      end

      subroutine f2pyinithepevt(setupfunc)
      external setupfunc
      integer nevhep
      integer nhep
      integer isthep(95000)
      integer idhep(95000)
      integer jmohep(2,95000)
      integer jdahep(2,95000)
      double precision phep(5,95000)
      double precision vhep(4,95000)
      common /hepevt/ nevhep,nhep,isthep,idhep,jmohep,jdahep,phep,
     &vhep
      call setupfunc(nevhep,nhep,isthep,idhep,jmohep,jdahep,phep,v
     &hep)
      end

      subroutine f2pyinitqgchg(setupfunc)
      external setupfunc
      integer ichg(95000)
      common /qgchg/ ichg
      call setupfunc(ichg)
      end

      subroutine f2pyinitcrqgslin(setupfunc)
      external setupfunc
      integer ictabl(200)
      integer iqtabl(21)
      common /crqgslin/ ictabl,iqtabl
      call setupfunc(ictabl,iqtabl)
      end

      subroutine f2pyinitnpy(setupfunc)
      external setupfunc
      integer*8 bitgen
      common /npy/ bitgen
      call setupfunc(bitgen)
      end



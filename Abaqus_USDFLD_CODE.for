C      ######################################################################
C      #################      CAE Assistant Company          ################
C      ##############         CAEassistant-com              #############
C      ###########   Copy right by CAE Assistant Company    ###############
C      ######################################################################
C
C      ######################################################################
C      ######################################################################
C      CAE Assisitant Services: 
C      Toturial Packages,Consultancy,Articles,Q&A,Video Gallery,Online Course
C      ######################################################################
C      Need help with your project? 
C      You can get initial free consultation from (our website caeassistant com)
C      ###################################################################### 	
      SUBROUTINE USDFLD(FIELD,STATEV,PNEWDT,DIRECT,T,CELENT,
     1 TIME,DTIME,CMNAME,ORNAME,NFIELD,NSTATV,NOEL,NPT,LAYER,
     2 KSPT,KSTEP,KINC,NDI,NSHR,COORD,JMAC,JMATYP,MATLAYO,LACCFLA)
C
      INCLUDE 'ABA_PARAM.INC'
C
      CHARACTER*80 CMNAME,ORNAME
      CHARACTER*3  FLGRAY(15)
      DIMENSION FIELD(NFIELD),STATEV(NSTATV),DIRECT(3,3),
     1 T(3,3),TIME(2)
      DIMENSION ARRAY(15),JARRAY(15),JMAC(*),JMATYP(*),COORD(*)

      CALL GETVRM('S',ARRAY,JARRAY,FLGRAY,JRCD,JMAC,JMATYP,MATLAYO,
     1     LACCFLA)

      if (kinc .le. 1) then
          statev(1) = 0
      end if
      
      if (abs(ARRAY(1)) > 1.0) then
          statev(1) = 1
      end if
      
      field(1) = statev(1)

      RETURN
      END

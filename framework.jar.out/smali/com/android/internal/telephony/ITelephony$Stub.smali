.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_IsDomesticRoaming:I = 0x44

.field static final TRANSACTION_IsInternationalRoaming:I = 0x43

.field static final TRANSACTION_SimSlotActivation:I = 0x4f

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_calculateAkaResponse:I = 0x4b

.field static final TRANSACTION_calculateGbaBootstrappingResponse:I = 0x4c

.field static final TRANSACTION_calculateNafExternalKey:I = 0x4d

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xd

.field static final TRANSACTION_closeIccLogicalChannel:I = 0x3c

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableApnType:I = 0x19

.field static final TRANSACTION_disableDataConnectivity:I = 0x21

.field static final TRANSACTION_disableLocationUpdates:I = 0x17

.field static final TRANSACTION_disableQos:I = 0x1b

.field static final TRANSACTION_enableApnType:I = 0x18

.field static final TRANSACTION_enableDataConnectivity:I = 0x20

.field static final TRANSACTION_enableLocationUpdates:I = 0x16

.field static final TRANSACTION_enableQos:I = 0x1a

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_getActivePhoneType:I = 0x28

.field static final TRANSACTION_getAllCellInfo:I = 0x40

.field static final TRANSACTION_getAtr:I = 0x3d

.field static final TRANSACTION_getCallState:I = 0x25

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x2a

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x2b

.field static final TRANSACTION_getCdmaEriText:I = 0x2c

.field static final TRANSACTION_getCellLocation:I = 0x23

.field static final TRANSACTION_getDataActivity:I = 0x26

.field static final TRANSACTION_getDataRoamingEnabled:I = 0x31

.field static final TRANSACTION_getDataServiceState:I = 0x34

.field static final TRANSACTION_getDataState:I = 0x27

.field static final TRANSACTION_getEuimid:I = 0x37

.field static final TRANSACTION_getHandsetInfo:I = 0x45

.field static final TRANSACTION_getIccPin1RetryCount:I = 0x38

.field static final TRANSACTION_getImei:I = 0x36

.field static final TRANSACTION_getLastError:I = 0x4a

.field static final TRANSACTION_getLgt3GDataStatus:I = 0x47

.field static final TRANSACTION_getLgtOzStartPage:I = 0x48

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x3f

.field static final TRANSACTION_getMeid:I = 0x35

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x24

.field static final TRANSACTION_getNetworkType:I = 0x2f

.field static final TRANSACTION_getPhoneServiceState:I = 0x46

.field static final TRANSACTION_getQosStatus:I = 0x1f

.field static final TRANSACTION_getSelectResponse:I = 0x3e

.field static final TRANSACTION_getServiceState:I = 0x33

.field static final TRANSACTION_getVoiceMessageCount:I = 0x2e

.field static final TRANSACTION_handlePinMmi:I = 0x12

.field static final TRANSACTION_hasIccCard:I = 0x30

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x52

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x22

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isRadioOn:I = 0xb

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isSimPinEnabled:I = 0xc

.field static final TRANSACTION_modifyQos:I = 0x1c

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x2d

.field static final TRANSACTION_notifyMissedCall:I = 0x49

.field static final TRANSACTION_openIccLogicalChannel:I = 0x3b

.field static final TRANSACTION_requestAuthForMediaShare:I = 0x51

.field static final TRANSACTION_requestIsimAuthentication:I = 0x50

.field static final TRANSACTION_resumeQos:I = 0x1e

.field static final TRANSACTION_sendOemRilRequestRaw:I = 0x29

.field static final TRANSACTION_setDataReadinessChecks:I = 0x41

.field static final TRANSACTION_setDataRoamingEnabled:I = 0x32

.field static final TRANSACTION_setGbaBootstrappingParams:I = 0x4e

.field static final TRANSACTION_setRadio:I = 0x14

.field static final TRANSACTION_setTransmitPower:I = 0x42

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_supplyPin:I = 0xe

.field static final TRANSACTION_supplyPinReportResult:I = 0x10

.field static final TRANSACTION_supplyPuk:I = 0xf

.field static final TRANSACTION_supplyPukReportResult:I = 0x11

.field static final TRANSACTION_suspendQos:I = 0x1d

.field static final TRANSACTION_toggleRadioOnOff:I = 0x13

.field static final TRANSACTION_transmitIccLogicalChannel:I = 0x39

.field static final TRANSACTION_transmitIccSimIO:I = 0x3a

.field static final TRANSACTION_updateServiceLocation:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 843
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 49
    :sswitch_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v2, 0x1

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v2, 0x1

    goto :goto_0

    .line 63
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v2, 0x1

    goto :goto_0

    .line 72
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreen()Z

    move-result v17

    .line 74
    .local v17, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v17, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v2, 0x1

    goto :goto_0

    .line 75
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 80
    .end local v17           #_result:Z
    :sswitch_4
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 83
    .local v3, _arg0:Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v17

    .line 84
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v17, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v2, 0x1

    goto :goto_0

    .line 82
    .end local v3           #_arg0:Z
    .end local v17           #_result:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 85
    .restart local v3       #_arg0:Z
    .restart local v17       #_result:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 90
    .end local v3           #_arg0:Z
    .end local v17           #_result:Z
    :sswitch_5
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v17

    .line 92
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v17, :cond_3

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 93
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 98
    .end local v17           #_result:Z
    :sswitch_6
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 105
    :sswitch_7
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 112
    :sswitch_8
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v17

    .line 114
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v17, :cond_4

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 115
    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    .line 120
    .end local v17           #_result:Z
    :sswitch_9
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v17

    .line 122
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v17, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 123
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 128
    .end local v17           #_result:Z
    :sswitch_a
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v17

    .line 130
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v17, :cond_6

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 131
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 136
    .end local v17           #_result:Z
    :sswitch_b
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v17

    .line 138
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v17, :cond_7

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 139
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 144
    .end local v17           #_result:Z
    :sswitch_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v17

    .line 146
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v17, :cond_8

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 147
    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    .line 152
    .end local v17           #_result:Z
    :sswitch_d
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotification()V

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 159
    :sswitch_e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v17

    .line 163
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v17, :cond_9

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 164
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 169
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v17           #_result:Z
    :sswitch_f
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 175
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v17, :cond_a

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 176
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 181
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v17           #_result:Z
    :sswitch_10
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)I

    move-result v17

    .line 185
    .local v17, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 191
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v17           #_result:I
    :sswitch_11
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 196
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 197
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 203
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v17           #_result:I
    :sswitch_12
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 206
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v17

    .line 207
    .local v17, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v17, :cond_b

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 208
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 213
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v17           #_result:Z
    :sswitch_13
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 220
    :sswitch_14
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    const/4 v3, 0x1

    .line 223
    .local v3, _arg0:Z
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v17

    .line 224
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v17, :cond_d

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 222
    .end local v3           #_arg0:Z
    .end local v17           #_result:Z
    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    .line 225
    .restart local v3       #_arg0:Z
    .restart local v17       #_result:Z
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .line 230
    .end local v3           #_arg0:Z
    .end local v17           #_result:Z
    :sswitch_15
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 237
    :sswitch_16
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 244
    :sswitch_17
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 251
    :sswitch_18
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v17

    .line 255
    .local v17, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 261
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v17           #_result:I
    :sswitch_19
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 264
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v17

    .line 265
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 271
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v17           #_result:I
    :sswitch_1a
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    .line 274
    sget-object v2, Lcom/android/internal/telephony/QosSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/QosSpec;

    .line 280
    .local v3, _arg0:Lcom/android/internal/telephony/QosSpec;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 281
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->enableQos(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I

    move-result v17

    .line 282
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 277
    .end local v3           #_arg0:Lcom/android/internal/telephony/QosSpec;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v17           #_result:I
    :cond_e
    const/4 v3, 0x0

    .restart local v3       #_arg0:Lcom/android/internal/telephony/QosSpec;
    goto :goto_f

    .line 288
    .end local v3           #_arg0:Lcom/android/internal/telephony/QosSpec;
    :sswitch_1b
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 291
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->disableQos(I)I

    move-result v17

    .line 292
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 298
    .end local v3           #_arg0:I
    .end local v17           #_result:I
    :sswitch_1c
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    .line 303
    sget-object v2, Lcom/android/internal/telephony/QosSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/QosSpec;

    .line 308
    .local v4, _arg1:Lcom/android/internal/telephony/QosSpec;
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->modifyQos(ILcom/android/internal/telephony/QosSpec;)I

    move-result v17

    .line 309
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 306
    .end local v4           #_arg1:Lcom/android/internal/telephony/QosSpec;
    .end local v17           #_result:I
    :cond_f
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/android/internal/telephony/QosSpec;
    goto :goto_10

    .line 315
    .end local v3           #_arg0:I
    .end local v4           #_arg1:Lcom/android/internal/telephony/QosSpec;
    :sswitch_1d
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 318
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->suspendQos(I)I

    move-result v17

    .line 319
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 325
    .end local v3           #_arg0:I
    .end local v17           #_result:I
    :sswitch_1e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 328
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->resumeQos(I)I

    move-result v17

    .line 329
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 335
    .end local v3           #_arg0:I
    .end local v17           #_result:I
    :sswitch_1f
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 338
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getQosStatus(I)I

    move-result v17

    .line 339
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 345
    .end local v3           #_arg0:I
    .end local v17           #_result:I
    :sswitch_20
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v17

    .line 347
    .local v17, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v17, :cond_10

    const/4 v2, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 348
    :cond_10
    const/4 v2, 0x0

    goto :goto_11

    .line 353
    .end local v17           #_result:Z
    :sswitch_21
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v17

    .line 355
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    if-eqz v17, :cond_11

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 356
    :cond_11
    const/4 v2, 0x0

    goto :goto_12

    .line 361
    .end local v17           #_result:Z
    :sswitch_22
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v17

    .line 363
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v17, :cond_12

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 364
    :cond_12
    const/4 v2, 0x0

    goto :goto_13

    .line 369
    .end local v17           #_result:Z
    :sswitch_23
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v17

    .line 371
    .local v17, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v17, :cond_13

    .line 373
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 379
    :goto_14
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 377
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 383
    .end local v17           #_result:Landroid/os/Bundle;
    :sswitch_24
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v19

    .line 385
    .local v19, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 387
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 391
    .end local v19           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_25
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v17

    .line 393
    .local v17, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 399
    .end local v17           #_result:I
    :sswitch_26
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v17

    .line 401
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 407
    .end local v17           #_result:I
    :sswitch_27
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v17

    .line 409
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 415
    .end local v17           #_result:I
    :sswitch_28
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v17

    .line 417
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 423
    .end local v17           #_result:I
    :sswitch_29
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 427
    .local v3, _arg0:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 428
    .local v16, _arg1_length:I
    if-gez v16, :cond_14

    .line 429
    const/4 v4, 0x0

    .line 434
    .local v4, _arg1:[B
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->sendOemRilRequestRaw([B[B)I

    move-result v17

    .line 435
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 438
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 432
    .end local v4           #_arg1:[B
    .end local v17           #_result:I
    :cond_14
    move/from16 v0, v16

    new-array v4, v0, [B

    .restart local v4       #_arg1:[B
    goto :goto_15

    .line 442
    .end local v3           #_arg0:[B
    .end local v4           #_arg1:[B
    .end local v16           #_arg1_length:I
    :sswitch_2a
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v17

    .line 444
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 450
    .end local v17           #_result:I
    :sswitch_2b
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v17

    .line 452
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 458
    .end local v17           #_result:I
    :sswitch_2c
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v17

    .line 460
    .local v17, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 466
    .end local v17           #_result:Ljava/lang/String;
    :sswitch_2d
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v17

    .line 468
    .local v17, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    if-eqz v17, :cond_15

    const/4 v2, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 469
    :cond_15
    const/4 v2, 0x0

    goto :goto_16

    .line 474
    .end local v17           #_result:Z
    :sswitch_2e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v17

    .line 476
    .local v17, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 482
    .end local v17           #_result:I
    :sswitch_2f
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v17

    .line 484
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 490
    .end local v17           #_result:I
    :sswitch_30
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v17

    .line 492
    .local v17, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    if-eqz v17, :cond_16

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 493
    :cond_16
    const/4 v2, 0x0

    goto :goto_17

    .line 498
    .end local v17           #_result:Z
    :sswitch_31
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataRoamingEnabled()Z

    move-result v17

    .line 500
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    if-eqz v17, :cond_17

    const/4 v2, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 501
    :cond_17
    const/4 v2, 0x0

    goto :goto_18

    .line 506
    .end local v17           #_result:Z
    :sswitch_32
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    const/4 v3, 0x1

    .line 509
    .local v3, _arg0:Z
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataRoamingEnabled(Z)V

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 508
    .end local v3           #_arg0:Z
    :cond_18
    const/4 v3, 0x0

    goto :goto_19

    .line 515
    :sswitch_33
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceState()I

    move-result v17

    .line 517
    .local v17, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 523
    .end local v17           #_result:I
    :sswitch_34
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataServiceState()I

    move-result v17

    .line 525
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 531
    .end local v17           #_result:I
    :sswitch_35
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMeid()Ljava/lang/String;

    move-result-object v17

    .line 533
    .local v17, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 539
    .end local v17           #_result:Ljava/lang/String;
    :sswitch_36
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getImei()Ljava/lang/String;

    move-result-object v17

    .line 541
    .restart local v17       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 547
    .end local v17           #_result:Ljava/lang/String;
    :sswitch_37
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getEuimid()Ljava/lang/String;

    move-result-object v17

    .line 549
    .restart local v17       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 555
    .end local v17           #_result:Ljava/lang/String;
    :sswitch_38
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccPin1RetryCount()I

    move-result v17

    .line 557
    .local v17, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 563
    .end local v17           #_result:I
    :sswitch_39
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 567
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 569
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 571
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 573
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 575
    .local v7, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 577
    .local v8, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, _arg6:Ljava/lang/String;
    move-object/from16 v2, p0

    .line 578
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 579
    .local v17, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 585
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:Ljava/lang/String;
    .end local v17           #_result:Ljava/lang/String;
    :sswitch_3a
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 589
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 591
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 593
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 595
    .restart local v6       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 597
    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, _arg5:Ljava/lang/String;
    move-object/from16 v2, p0

    .line 598
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccSimIO(IIIIILjava/lang/String;)[B

    move-result-object v17

    .line 599
    .local v17, _result:[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 601
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 605
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:Ljava/lang/String;
    .end local v17           #_result:[B
    :sswitch_3b
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 608
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->openIccLogicalChannel(Ljava/lang/String;)I

    move-result v17

    .line 609
    .local v17, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 615
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v17           #_result:I
    :sswitch_3c
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 618
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->closeIccLogicalChannel(I)Z

    move-result v17

    .line 619
    .local v17, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    if-eqz v17, :cond_19

    const/4 v2, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 620
    :cond_19
    const/4 v2, 0x0

    goto :goto_1a

    .line 625
    .end local v3           #_arg0:I
    .end local v17           #_result:Z
    :sswitch_3d
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAtr()[B

    move-result-object v17

    .line 627
    .local v17, _result:[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 629
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 633
    .end local v17           #_result:[B
    :sswitch_3e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSelectResponse()[B

    move-result-object v17

    .line 635
    .restart local v17       #_result:[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 637
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 641
    .end local v17           #_result:[B
    :sswitch_3f
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode()I

    move-result v17

    .line 643
    .local v17, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 649
    .end local v17           #_result:I
    :sswitch_40
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo()Ljava/util/List;

    move-result-object v18

    .line 651
    .local v18, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 653
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 657
    .end local v18           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_41
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v3, 0x1

    .line 661
    .local v3, _arg0:Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v4, 0x1

    .line 663
    .local v4, _arg1:Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v5, 0x1

    .line 664
    .local v5, _arg2:Z
    :goto_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataReadinessChecks(ZZZ)V

    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 659
    .end local v3           #_arg0:Z
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:Z
    :cond_1a
    const/4 v3, 0x0

    goto :goto_1b

    .line 661
    .restart local v3       #_arg0:Z
    :cond_1b
    const/4 v4, 0x0

    goto :goto_1c

    .line 663
    .restart local v4       #_arg1:Z
    :cond_1c
    const/4 v5, 0x0

    goto :goto_1d

    .line 670
    .end local v3           #_arg0:Z
    .end local v4           #_arg1:Z
    :sswitch_42
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 673
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setTransmitPower(I)Z

    move-result v17

    .line 674
    .local v17, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    if-eqz v17, :cond_1d

    const/4 v2, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 675
    :cond_1d
    const/4 v2, 0x0

    goto :goto_1e

    .line 680
    .end local v3           #_arg0:I
    .end local v17           #_result:Z
    :sswitch_43
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->IsInternationalRoaming()Z

    move-result v17

    .line 682
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    if-eqz v17, :cond_1e

    const/4 v2, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 683
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1f

    .line 688
    .end local v17           #_result:Z
    :sswitch_44
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->IsDomesticRoaming()Z

    move-result v17

    .line 690
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    if-eqz v17, :cond_1f

    const/4 v2, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 691
    :cond_1f
    const/4 v2, 0x0

    goto :goto_20

    .line 696
    .end local v17           #_result:Z
    :sswitch_45
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 699
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 700
    .local v17, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 702
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 706
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v17           #_result:Ljava/lang/String;
    :sswitch_46
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneServiceState()I

    move-result v17

    .line 708
    .local v17, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 714
    .end local v17           #_result:I
    :sswitch_47
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 717
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getLgt3GDataStatus(I)Ljava/lang/String;

    move-result-object v17

    .line 718
    .local v17, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 720
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 724
    .end local v3           #_arg0:I
    .end local v17           #_result:Ljava/lang/String;
    :sswitch_48
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLgtOzStartPage()Ljava/lang/String;

    move-result-object v17

    .line 726
    .restart local v17       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 728
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 732
    .end local v17           #_result:Ljava/lang/String;
    :sswitch_49
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 736
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 738
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 740
    .local v5, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .local v14, _arg3:J
    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    .line 741
    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 747
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v14           #_arg3:J
    :sswitch_4a
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastError()I

    move-result v17

    .line 749
    .local v17, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 755
    .end local v17           #_result:I
    :sswitch_4b
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 759
    .local v3, _arg0:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 760
    .local v4, _arg1:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->calculateAkaResponse([B[B)Ljava/lang/String;

    move-result-object v17

    .line 761
    .local v17, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 763
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 767
    .end local v3           #_arg0:[B
    .end local v4           #_arg1:[B
    .end local v17           #_result:Ljava/lang/String;
    :sswitch_4c
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 771
    .restart local v3       #_arg0:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 772
    .restart local v4       #_arg1:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;

    move-result-object v17

    .line 773
    .local v17, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    if-eqz v17, :cond_20

    .line 775
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 781
    :goto_21
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 779
    :cond_20
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 785
    .end local v3           #_arg0:[B
    .end local v4           #_arg1:[B
    .end local v17           #_result:Landroid/os/Bundle;
    :sswitch_4d
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 788
    .restart local v3       #_arg0:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->calculateNafExternalKey([B)[B

    move-result-object v17

    .line 789
    .local v17, _result:[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 791
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 795
    .end local v3           #_arg0:[B
    .end local v17           #_result:[B
    :sswitch_4e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 799
    .restart local v3       #_arg0:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 801
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 802
    .restart local v5       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 808
    .end local v3           #_arg0:[B
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    :sswitch_4f
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_21

    const/4 v3, 0x1

    .line 811
    .local v3, _arg0:Z
    :goto_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->SimSlotActivation(Z)V

    .line 812
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 810
    .end local v3           #_arg0:Z
    :cond_21
    const/4 v3, 0x0

    goto :goto_22

    .line 817
    :sswitch_50
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 820
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsimAuthentication(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 826
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_51
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 829
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestAuthForMediaShare(Ljava/lang/String;)V

    .line 830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 835
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_52
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 838
    .local v3, _arg0:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRaw([B)V

    .line 839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

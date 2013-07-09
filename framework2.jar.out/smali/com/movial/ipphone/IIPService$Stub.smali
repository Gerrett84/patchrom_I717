.class public abstract Lcom/movial/ipphone/IIPService$Stub;
.super Landroid/os/Binder;
.source "IIPService.java"

# interfaces
.implements Lcom/movial/ipphone/IIPService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/movial/ipphone/IIPService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.movial.ipphone.IIPService"

.field static final TRANSACTION_accept:I = 0x9

.field static final TRANSACTION_acknowledgeLastIncomingIpSms:I = 0x18

.field static final TRANSACTION_clearDisconnected:I = 0x1d

.field static final TRANSACTION_conference:I = 0xc

.field static final TRANSACTION_connect:I = 0x2

.field static final TRANSACTION_dial:I = 0x5

.field static final TRANSACTION_dialEmergencyCall:I = 0x6

.field static final TRANSACTION_disconnect:I = 0x3

.field static final TRANSACTION_getContactUri:I = 0x1e

.field static final TRANSACTION_hangup:I = 0x7

.field static final TRANSACTION_hangupForegroundResumeBackground:I = 0x8

.field static final TRANSACTION_hold:I = 0xb

.field static final TRANSACTION_queryLastRegisterFailureCode:I = 0x4

.field static final TRANSACTION_registerForCallStates:I = 0x14

.field static final TRANSACTION_registerForConnectionState:I = 0x12

.field static final TRANSACTION_registerForEmergencyCallPref:I = 0x15

.field static final TRANSACTION_registerForIncomingSMS:I = 0x16

.field static final TRANSACTION_registerForIncomingUSSD:I = 0x10

.field static final TRANSACTION_registerForSubscription:I = 0x13

.field static final TRANSACTION_reject:I = 0xa

.field static final TRANSACTION_sendDtmf:I = 0x19

.field static final TRANSACTION_sendSMS:I = 0x17

.field static final TRANSACTION_sendUssd:I = 0x11

.field static final TRANSACTION_setCW:I = 0xf

.field static final TRANSACTION_setCallForward:I = 0xe

.field static final TRANSACTION_setCellLocation:I = 0x1c

.field static final TRANSACTION_setMute:I = 0xd

.field static final TRANSACTION_startDtmf:I = 0x1a

.field static final TRANSACTION_stopDtmf:I = 0x1b

.field static final TRANSACTION_test:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p0, p0, v0}, Lcom/movial/ipphone/IIPService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/movial/ipphone/IIPService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.movial.ipphone.IIPService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/movial/ipphone/IIPService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/movial/ipphone/IIPService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/movial/ipphone/IIPService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/movial/ipphone/IIPService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 390
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->test()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->connect(Ljava/lang/String;I)Z

    move-result v6

    .line 60
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v6, :cond_0

    move v0, v7

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_3
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->disconnect()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    :sswitch_4
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->queryLastRegisterFailureCode()Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->dial(Ljava/lang/String;I)I

    move-result v6

    .line 87
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:I
    :sswitch_6
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->dialEmergencyCall(Ljava/lang/String;)I

    move-result v6

    .line 97
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_7
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 106
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->hangup(I)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 112
    .end local v1           #_arg0:I
    :sswitch_8
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->hangupForegroundResumeBackground()V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 119
    :sswitch_9
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->accept()V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    :sswitch_a
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 129
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->reject(I)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 135
    .end local v1           #_arg0:I
    :sswitch_b
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v1, v7

    .line 138
    .local v1, _arg0:Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->hold(Z)I

    move-result v6

    .line 139
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:I
    :cond_1
    move v1, v0

    .line 137
    goto :goto_1

    .line 145
    :sswitch_c
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->conference()V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 152
    :sswitch_d
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v1, v7

    .line 155
    .restart local v1       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->setMute(Z)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_2
    move v1, v0

    .line 154
    goto :goto_2

    .line 161
    :sswitch_e
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 171
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Messenger;

    .local v5, _arg4:Landroid/os/Messenger;
    :goto_3
    move-object v0, p0

    .line 177
    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IIPService$Stub;->setCallForward(IILjava/lang/String;ILandroid/os/Messenger;)I

    move-result v6

    .line 178
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    .end local v5           #_arg4:Landroid/os/Messenger;
    .end local v6           #_result:I
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #_arg4:Landroid/os/Messenger;
    goto :goto_3

    .line 184
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Landroid/os/Messenger;
    :sswitch_f
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    move v1, v7

    .line 188
    .local v1, _arg0:Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 194
    .local v2, _arg1:Landroid/os/Messenger;
    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->setCW(ZLandroid/os/Messenger;)I

    move-result v6

    .line 195
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Landroid/os/Messenger;
    .end local v6           #_result:I
    :cond_4
    move v1, v0

    .line 186
    goto :goto_4

    .line 192
    .restart local v1       #_arg0:Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Messenger;
    goto :goto_5

    .line 201
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Landroid/os/Messenger;
    :sswitch_10
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 204
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 209
    .local v1, _arg0:Landroid/os/Messenger;
    :goto_6
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForIncomingUSSD(Landroid/os/Messenger;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 207
    .end local v1           #_arg0:Landroid/os/Messenger;
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/Messenger;
    goto :goto_6

    .line 215
    .end local v1           #_arg0:Landroid/os/Messenger;
    :sswitch_11
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 220
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 225
    .restart local v2       #_arg1:Landroid/os/Messenger;
    :goto_7
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->sendUssd(Ljava/lang/String;Landroid/os/Messenger;)I

    move-result v6

    .line 226
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 223
    .end local v2           #_arg1:Landroid/os/Messenger;
    .end local v6           #_result:I
    :cond_7
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Messenger;
    goto :goto_7

    .line 232
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/Messenger;
    :sswitch_12
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 235
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 240
    .local v1, _arg0:Landroid/os/Messenger;
    :goto_8
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForConnectionState(Landroid/os/Messenger;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 238
    .end local v1           #_arg0:Landroid/os/Messenger;
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/Messenger;
    goto :goto_8

    .line 246
    .end local v1           #_arg0:Landroid/os/Messenger;
    :sswitch_13
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 249
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 254
    .restart local v1       #_arg0:Landroid/os/Messenger;
    :goto_9
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForSubscription(Landroid/os/Messenger;)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 252
    .end local v1           #_arg0:Landroid/os/Messenger;
    :cond_9
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/Messenger;
    goto :goto_9

    .line 260
    .end local v1           #_arg0:Landroid/os/Messenger;
    :sswitch_14
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 263
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 268
    .restart local v1       #_arg0:Landroid/os/Messenger;
    :goto_a
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForCallStates(Landroid/os/Messenger;)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 266
    .end local v1           #_arg0:Landroid/os/Messenger;
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/Messenger;
    goto :goto_a

    .line 274
    .end local v1           #_arg0:Landroid/os/Messenger;
    :sswitch_15
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_c

    .line 277
    sget-object v8, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 282
    .restart local v1       #_arg0:Landroid/os/Messenger;
    :goto_b
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForEmergencyCallPref(Landroid/os/Messenger;)Z

    move-result v6

    .line 283
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v6, :cond_b

    move v0, v7

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 280
    .end local v1           #_arg0:Landroid/os/Messenger;
    .end local v6           #_result:Z
    :cond_c
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/Messenger;
    goto :goto_b

    .line 289
    .end local v1           #_arg0:Landroid/os/Messenger;
    :sswitch_16
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 292
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 297
    .restart local v1       #_arg0:Landroid/os/Messenger;
    :goto_c
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForIncomingSMS(Landroid/os/Messenger;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 295
    .end local v1           #_arg0:Landroid/os/Messenger;
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/Messenger;
    goto :goto_c

    .line 303
    .end local v1           #_arg0:Landroid/os/Messenger;
    :sswitch_17
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 310
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .line 316
    .local v3, _arg2:Landroid/os/Messenger;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 317
    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/movial/ipphone/IIPService$Stub;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;I)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 313
    .end local v3           #_arg2:Landroid/os/Messenger;
    .end local v4           #_arg3:I
    :cond_e
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/Messenger;
    goto :goto_d

    .line 323
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/Messenger;
    :sswitch_18
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_f

    move v1, v7

    .line 327
    .local v1, _arg0:Z
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 328
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->acknowledgeLastIncomingIpSms(ZI)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    :cond_f
    move v1, v0

    .line 325
    goto :goto_e

    .line 334
    :sswitch_19
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v2, v0

    .line 339
    .local v2, _arg1:C
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->sendDtmf(IC)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 345
    .end local v1           #_arg0:I
    .end local v2           #_arg1:C
    :sswitch_1a
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 349
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v2, v0

    .line 350
    .restart local v2       #_arg1:C
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->startDtmf(IC)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 356
    .end local v1           #_arg0:I
    .end local v2           #_arg1:C
    :sswitch_1b
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 359
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->stopDtmf(I)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 365
    .end local v1           #_arg0:I
    :sswitch_1c
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 369
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 370
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->setCellLocation(II)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 376
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_1d
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->clearDisconnected()V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 383
    :sswitch_1e
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->getContactUri()[Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

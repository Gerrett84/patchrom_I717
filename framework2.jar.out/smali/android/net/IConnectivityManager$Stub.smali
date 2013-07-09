.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_ResetCwDefaultService:I = 0x3d

.field static final TRANSACTION_SetCwDefaultService:I = 0x3c

.field static final TRANSACTION_establishVpn:I = 0x2b

.field static final TRANSACTION_getActiveLinkProperties:I = 0x8

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x3

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x4

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0xb

.field static final TRANSACTION_getAllNetworkInfo:I = 0x6

.field static final TRANSACTION_getAllNetworkState:I = 0xa

.field static final TRANSACTION_getDhcpServerConfiguration:I = 0x3a

.field static final TRANSACTION_getFmcStatus:I = 0x30

.field static final TRANSACTION_getGlobalProxy:I = 0x25

.field static final TRANSACTION_getLastTetherError:I = 0x19

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x2d

.field static final TRANSACTION_getLinkProperties:I = 0x9

.field static final TRANSACTION_getMobileDataEnabled:I = 0x13

.field static final TRANSACTION_getNetworkInfo:I = 0x5

.field static final TRANSACTION_getNetworkPreference:I = 0x2

.field static final TRANSACTION_getProxy:I = 0x27

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x21

.field static final TRANSACTION_getTetherableIfaces:I = 0x1b

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x1f

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x20

.field static final TRANSACTION_getTetheredIfacePairs:I = 0x1d

.field static final TRANSACTION_getTetheredIfaces:I = 0x1c

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x1e

.field static final TRANSACTION_isActiveNetworkMetered:I = 0xc

.field static final TRANSACTION_isMobilePolicyDataEnable:I = 0x16

.field static final TRANSACTION_isNetworkSupported:I = 0x7

.field static final TRANSACTION_isTetheringSupported:I = 0x1a

.field static final TRANSACTION_prepareVpn:I = 0x2a

.field static final TRANSACTION_protectVpn:I = 0x29

.field static final TRANSACTION_releaseLink:I = 0x33

.field static final TRANSACTION_removeQosRegistration:I = 0x38

.field static final TRANSACTION_reportInetCondition:I = 0x24

.field static final TRANSACTION_requestCapabilities:I = 0x34

.field static final TRANSACTION_requestLink:I = 0x32

.field static final TRANSACTION_requestNetworkTransitionWakelock:I = 0x23

.field static final TRANSACTION_requestQoS:I = 0x35

.field static final TRANSACTION_requestRouteToHost:I = 0x11

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x12

.field static final TRANSACTION_resumeQoS:I = 0x37

.field static final TRANSACTION_saveDhcpServerConfiguration:I = 0x3b

.field static final TRANSACTION_setDataDependency:I = 0x28

.field static final TRANSACTION_setGlobalProxy:I = 0x26

.field static final TRANSACTION_setMobileDataEnabled:I = 0x14

.field static final TRANSACTION_setNetworkPreference:I = 0x1

.field static final TRANSACTION_setPolicyDataEnable:I = 0x15

.field static final TRANSACTION_setRadio:I = 0xe

.field static final TRANSACTION_setRadios:I = 0xd

.field static final TRANSACTION_setTrackedCapabilities:I = 0x39

.field static final TRANSACTION_setUsbTethering:I = 0x22

.field static final TRANSACTION_startFmc:I = 0x2e

.field static final TRANSACTION_startLegacyVpn:I = 0x2c

.field static final TRANSACTION_startUsingNetworkFeature:I = 0xf

.field static final TRANSACTION_stopFmc:I = 0x2f

.field static final TRANSACTION_stopUsingNetworkFeature:I = 0x10

.field static final TRANSACTION_suspendQoS:I = 0x36

.field static final TRANSACTION_tether:I = 0x17

.field static final TRANSACTION_untether:I = 0x18

.field static final TRANSACTION_updateOperatorPolicy:I = 0x31


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/IConnectivityManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/net/IConnectivityManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 751
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 47
    :sswitch_0
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setNetworkPreference(I)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    .end local v0           #_arg0:I
    :sswitch_2
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getNetworkPreference()I

    move-result v4

    .line 63
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v4           #_result:I
    :sswitch_3
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 71
    .local v4, _result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v4           #_result:Landroid/net/NetworkInfo;
    :sswitch_4
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 87
    .restart local v4       #_result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v4, :cond_1

    .line 89
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v0           #_arg0:I
    .end local v4           #_result:Landroid/net/NetworkInfo;
    :sswitch_5
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 103
    .restart local v4       #_result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v4, :cond_2

    .line 105
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 115
    .end local v0           #_arg0:I
    .end local v4           #_result:Landroid/net/NetworkInfo;
    :sswitch_6
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    .line 117
    .local v4, _result:[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 123
    .end local v4           #_result:[Landroid/net/NetworkInfo;
    :sswitch_7
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v4

    .line 127
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v4, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_8
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    .line 135
    .local v4, _result:Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v4, :cond_4

    .line 137
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    invoke-virtual {v4, p3, v6}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 141
    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 147
    .end local v4           #_result:Landroid/net/LinkProperties;
    :sswitch_9
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v4

    .line 151
    .restart local v4       #_result:Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v4, :cond_5

    .line 153
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    invoke-virtual {v4, p3, v6}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 157
    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 163
    .end local v0           #_arg0:I
    .end local v4           #_result:Landroid/net/LinkProperties;
    :sswitch_a
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v4

    .line 165
    .local v4, _result:[Landroid/net/NetworkState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 171
    .end local v4           #_result:[Landroid/net/NetworkState;
    :sswitch_b
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v4

    .line 173
    .local v4, _result:Landroid/net/NetworkQuotaInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v4, :cond_6

    .line 175
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 179
    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    .end local v4           #_result:Landroid/net/NetworkQuotaInfo;
    :sswitch_c
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    move-result v4

    .line 187
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    if-eqz v4, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 193
    .end local v4           #_result:Z
    :sswitch_d
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    move v0, v6

    .line 196
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setRadios(Z)Z

    move-result v4

    .line 197
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v4, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_9
    move v0, v5

    .line 195
    goto :goto_1

    .line 203
    :sswitch_e
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b

    move v1, v6

    .line 208
    .local v1, _arg1:Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setRadio(IZ)Z

    move-result v4

    .line 209
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v4, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_b
    move v1, v5

    .line 207
    goto :goto_2

    .line 215
    .end local v0           #_arg0:I
    :sswitch_f
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 219
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 222
    .local v2, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v4

    .line 223
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/os/IBinder;
    .end local v4           #_result:I
    :sswitch_10
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 233
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v4

    .line 235
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 241
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_11
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 245
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 246
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHost(II)Z

    move-result v4

    .line 247
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v4, :cond_c

    move v5, v6

    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 253
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:Z
    :sswitch_12
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 258
    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[B)Z

    move-result v4

    .line 259
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    if-eqz v4, :cond_d

    move v5, v6

    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 265
    .end local v0           #_arg0:I
    .end local v1           #_arg1:[B
    .end local v4           #_result:Z
    :sswitch_13
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileDataEnabled()Z

    move-result v4

    .line 267
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v4, :cond_e

    move v5, v6

    :cond_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 273
    .end local v4           #_result:Z
    :sswitch_14
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_f

    move v0, v6

    .line 276
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setMobileDataEnabled(Z)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_f
    move v0, v5

    .line 275
    goto :goto_3

    .line 282
    :sswitch_15
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 286
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_10

    move v1, v6

    .line 287
    .local v1, _arg1:Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setPolicyDataEnable(IZ)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_10
    move v1, v5

    .line 286
    goto :goto_4

    .line 293
    .end local v0           #_arg0:I
    :sswitch_16
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isMobilePolicyDataEnable()Z

    move-result v4

    .line 295
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    if-eqz v4, :cond_11

    move v5, v6

    :cond_11
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 301
    .end local v4           #_result:Z
    :sswitch_17
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v4

    .line 305
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 311
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_18
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v4

    .line 315
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 321
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_19
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v4

    .line 325
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 331
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_1a
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v4

    .line 333
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    if-eqz v4, :cond_12

    move v5, v6

    :cond_12
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 339
    .end local v4           #_result:Z
    :sswitch_1b
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_1c
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 349
    .restart local v4       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_1d
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfacePairs()[Ljava/lang/String;

    move-result-object v4

    .line 357
    .restart local v4       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_1e
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 365
    .restart local v4       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_1f
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 373
    .restart local v4       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 379
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_20
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 381
    .restart local v4       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 387
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_21
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 389
    .restart local v4       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 395
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_22
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_13

    move v0, v6

    .line 398
    .local v0, _arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(Z)I

    move-result v4

    .line 399
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:I
    :cond_13
    move v0, v5

    .line 397
    goto :goto_5

    .line 405
    :sswitch_23
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->requestNetworkTransitionWakelock(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 414
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_24
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 418
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 419
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 425
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_25
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    .line 427
    .local v4, _result:Landroid/net/ProxyProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    if-eqz v4, :cond_14

    .line 429
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    invoke-virtual {v4, p3, v6}, Landroid/net/ProxyProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 433
    :cond_14
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 439
    .end local v4           #_result:Landroid/net/ProxyProperties;
    :sswitch_26
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    .line 442
    sget-object v5, Landroid/net/ProxyProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyProperties;

    .line 447
    .local v0, _arg0:Landroid/net/ProxyProperties;
    :goto_6
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 445
    .end local v0           #_arg0:Landroid/net/ProxyProperties;
    :cond_15
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/ProxyProperties;
    goto :goto_6

    .line 453
    .end local v0           #_arg0:Landroid/net/ProxyProperties;
    :sswitch_27
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    .line 455
    .restart local v4       #_result:Landroid/net/ProxyProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    if-eqz v4, :cond_16

    .line 457
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    invoke-virtual {v4, p3, v6}, Landroid/net/ProxyProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 461
    :cond_16
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 467
    .end local v4           #_result:Landroid/net/ProxyProperties;
    :sswitch_28
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 471
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_17

    move v1, v6

    .line 472
    .local v1, _arg1:Z
    :goto_7
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setDataDependency(IZ)V

    .line 473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_17
    move v1, v5

    .line 471
    goto :goto_7

    .line 478
    .end local v0           #_arg0:I
    :sswitch_29
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19

    .line 481
    sget-object v7, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 486
    .local v0, _arg0:Landroid/os/ParcelFileDescriptor;
    :goto_8
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->protectVpn(Landroid/os/ParcelFileDescriptor;)Z

    move-result v4

    .line 487
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    if-eqz v4, :cond_18

    move v5, v6

    :cond_18
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 484
    .end local v0           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v4           #_result:Z
    :cond_19
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/ParcelFileDescriptor;
    goto :goto_8

    .line 493
    .end local v0           #_arg0:Landroid/os/ParcelFileDescriptor;
    :sswitch_2a
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 499
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    if-eqz v4, :cond_1a

    move v5, v6

    :cond_1a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 505
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_2b
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1b

    .line 508
    sget-object v7, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    .line 513
    .local v0, _arg0:Lcom/android/internal/net/VpnConfig;
    :goto_9
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 514
    .local v4, _result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    if-eqz v4, :cond_1c

    .line 516
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    invoke-virtual {v4, p3, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 511
    .end local v0           #_arg0:Lcom/android/internal/net/VpnConfig;
    .end local v4           #_result:Landroid/os/ParcelFileDescriptor;
    :cond_1b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/internal/net/VpnConfig;
    goto :goto_9

    .line 520
    .restart local v4       #_result:Landroid/os/ParcelFileDescriptor;
    :cond_1c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 526
    .end local v0           #_arg0:Lcom/android/internal/net/VpnConfig;
    .end local v4           #_result:Landroid/os/ParcelFileDescriptor;
    :sswitch_2c
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    .line 529
    sget-object v5, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    .line 535
    .restart local v0       #_arg0:Lcom/android/internal/net/VpnConfig;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, _arg1:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, _arg2:[Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 532
    .end local v0           #_arg0:Lcom/android/internal/net/VpnConfig;
    .end local v1           #_arg1:[Ljava/lang/String;
    .end local v2           #_arg2:[Ljava/lang/String;
    :cond_1d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/internal/net/VpnConfig;
    goto :goto_a

    .line 544
    .end local v0           #_arg0:Lcom/android/internal/net/VpnConfig;
    :sswitch_2d
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v4

    .line 546
    .local v4, _result:Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    if-eqz v4, :cond_1e

    .line 548
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    invoke-virtual {v4, p3, v6}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 552
    :cond_1e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 558
    .end local v4           #_result:Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_2e
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 561
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->startFmc(Landroid/os/IBinder;)Z

    move-result v4

    .line 562
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    if-eqz v4, :cond_1f

    move v5, v6

    :cond_1f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 568
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v4           #_result:Z
    :sswitch_2f
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 571
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->stopFmc(Landroid/os/IBinder;)Z

    move-result v4

    .line 572
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    if-eqz v4, :cond_20

    move v5, v6

    :cond_20
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 578
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v4           #_result:Z
    :sswitch_30
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 581
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getFmcStatus(Landroid/os/IBinder;)I

    move-result v4

    .line 582
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 588
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v4           #_result:I
    :sswitch_31
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->updateOperatorPolicy(Ljava/lang/String;)Z

    move-result v4

    .line 592
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    if-eqz v4, :cond_21

    move v5, v6

    :cond_21
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 598
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_32
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    .line 601
    sget-object v5, Landroid/net/LinkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkCapabilities;

    .line 607
    .local v0, _arg0:Landroid/net/LinkCapabilities;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 610
    .local v2, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestLink(Landroid/net/LinkCapabilities;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v4

    .line 611
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 604
    .end local v0           #_arg0:Landroid/net/LinkCapabilities;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/os/IBinder;
    .end local v4           #_result:I
    :cond_22
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/LinkCapabilities;
    goto :goto_b

    .line 617
    .end local v0           #_arg0:Landroid/net/LinkCapabilities;
    :sswitch_33
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 620
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->releaseLink(I)V

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 626
    .end local v0           #_arg0:I
    :sswitch_34
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 630
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 631
    .local v1, _arg1:[I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestCapabilities(I[I)Landroid/net/LinkCapabilities;

    move-result-object v4

    .line 632
    .local v4, _result:Landroid/net/LinkCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    if-eqz v4, :cond_23

    .line 634
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    invoke-virtual {v4, p3, v6}, Landroid/net/LinkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 638
    :cond_23
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 644
    .end local v0           #_arg0:I
    .end local v1           #_arg1:[I
    .end local v4           #_result:Landroid/net/LinkCapabilities;
    :sswitch_35
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 648
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 650
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestQoS(IILjava/lang/String;)Z

    move-result v4

    .line 652
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    if-eqz v4, :cond_24

    move v5, v6

    :cond_24
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 658
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_36
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 661
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->suspendQoS(I)Z

    move-result v4

    .line 662
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    if-eqz v4, :cond_25

    move v5, v6

    :cond_25
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 668
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_37
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 671
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->resumeQoS(I)Z

    move-result v4

    .line 672
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    if-eqz v4, :cond_26

    move v5, v6

    :cond_26
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 678
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_38
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 681
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->removeQosRegistration(I)Z

    move-result v4

    .line 682
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    if-eqz v4, :cond_27

    move v5, v6

    :cond_27
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 688
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_39
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 692
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 693
    .local v1, _arg1:[I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setTrackedCapabilities(I[I)V

    .line 694
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 699
    .end local v0           #_arg0:I
    .end local v1           #_arg1:[I
    :sswitch_3a
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;

    move-result-object v4

    .line 701
    .local v4, _result:Landroid/net/DhcpServerConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    if-eqz v4, :cond_28

    .line 703
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    invoke-virtual {v4, p3, v6}, Landroid/net/DhcpServerConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 707
    :cond_28
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 713
    .end local v4           #_result:Landroid/net/DhcpServerConfiguration;
    :sswitch_3b
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2a

    .line 716
    sget-object v7, Landroid/net/DhcpServerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DhcpServerConfiguration;

    .line 721
    .local v0, _arg0:Landroid/net/DhcpServerConfiguration;
    :goto_c
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    move-result v4

    .line 722
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    if-eqz v4, :cond_29

    move v5, v6

    :cond_29
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 719
    .end local v0           #_arg0:Landroid/net/DhcpServerConfiguration;
    .end local v4           #_result:Z
    :cond_2a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/DhcpServerConfiguration;
    goto :goto_c

    .line 728
    .end local v0           #_arg0:Landroid/net/DhcpServerConfiguration;
    :sswitch_3c
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 734
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 736
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 737
    .local v3, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->SetCwDefaultService(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 743
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    .end local v3           #_arg3:Ljava/lang/String;
    :sswitch_3d
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 746
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->ResetCwDefaultService(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

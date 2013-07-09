.class public abstract Lcom/samsung/wfd/IWfdManager$Stub;
.super Landroid/os/Binder;
.source "IWfdManager.java"

# interfaces
.implements Lcom/samsung/wfd/IWfdManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/IWfdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/IWfdManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.wfd.IWfdManager"

.field static final TRANSACTION_getMessenger:I = 0x4

.field static final TRANSACTION_getWfdInfo:I = 0x2

.field static final TRANSACTION_getWfdSinkResolution:I = 0x5

.field static final TRANSACTION_getWfdState:I = 0x3

.field static final TRANSACTION_setWfdEnabledDialog:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wfd/IWfdManager;
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
    const-string v1, "com.samsung.wfd.IWfdManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/wfd/IWfdManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/samsung/wfd/IWfdManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v3, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v4, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 55
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->setWfdEnabledDialog(Z)Z

    move-result v1

    .line 56
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v1, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_1
    move v0, v3

    .line 54
    goto :goto_1

    .line 62
    :sswitch_2
    const-string v4, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getWfdInfo()Lcom/samsung/wfd/WfdInfo;

    move-result-object v1

    .line 64
    .local v1, _result:Lcom/samsung/wfd/WfdInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v1, :cond_2

    .line 66
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {v1, p3, v2}, Lcom/samsung/wfd/WfdInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v1           #_result:Lcom/samsung/wfd/WfdInfo;
    :sswitch_3
    const-string v3, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getWfdState()I

    move-result v1

    .line 78
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v1           #_result:I
    :sswitch_4
    const-string v4, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 86
    .local v1, _result:Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v1, p3, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v1           #_result:Landroid/os/Messenger;
    :sswitch_5
    const-string v3, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getWfdSinkResolution()I

    move-result v1

    .line 100
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

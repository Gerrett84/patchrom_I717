.class Landroid/hardware/input/IInputManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 265
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 267
    return-void
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "inputDeviceDescriptor"
    .parameter "keyboardLayoutDescriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 489
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 491
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 501
    return-void

    .line 498
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .locals 5
    .parameter "deviceId"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 558
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 560
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 563
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 564
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 570
    return-void

    .line 567
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "inputDeviceDescriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 437
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 440
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 442
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 447
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 450
    return-object v2

    .line 447
    .end local v2           #_result:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 6
    .parameter "deviceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 281
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 284
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    sget-object v3, Landroid/view/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    .local v2, _result:Landroid/view/InputDevice;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 299
    return-object v2

    .line 292
    .end local v2           #_result:Landroid/view/InputDevice;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_result:Landroid/view/InputDevice;
    goto :goto_0

    .line 296
    .end local v2           #_result:Landroid/view/InputDevice;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInputDeviceIds()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 304
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 307
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 308
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 310
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 313
    .local v2, _result:[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 316
    return-object v2

    .line 313
    .end local v2           #_result:[I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    const-string v0, "android.hardware.input.IInputManager"

    return-object v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 6
    .parameter "keyboardLayoutDescriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 414
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 417
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 421
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 422
    sget-object v3, Landroid/hardware/input/KeyboardLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/KeyboardLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    .local v2, _result:Landroid/hardware/input/KeyboardLayout;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 432
    return-object v2

    .line 425
    .end local v2           #_result:Landroid/hardware/input/KeyboardLayout;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_result:Landroid/hardware/input/KeyboardLayout;
    goto :goto_0

    .line 429
    .end local v2           #_result:Landroid/hardware/input/KeyboardLayout;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 397
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 400
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 401
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 402
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 403
    sget-object v3, Landroid/hardware/input/KeyboardLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/input/KeyboardLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    .local v2, _result:[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 409
    return-object v2

    .line 406
    .end local v2           #_result:[Landroid/hardware/input/KeyboardLayout;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getKeyboardLayoutsForInputDevice(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "inputDeviceDescriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 471
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 474
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 478
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 481
    .local v2, _result:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 484
    return-object v2

    .line 481
    .end local v2           #_result:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public hasKeys(II[I[Z)Z
    .locals 6
    .parameter "deviceId"
    .parameter "sourceMask"
    .parameter "keyCodes"
    .parameter "keyExists"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 323
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 326
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 330
    if-nez p4, :cond_1

    .line 331
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    :goto_0
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 339
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readBooleanArray([Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    return v2

    .line 334
    .end local v2           #_result:Z
    :cond_1
    :try_start_1
    array-length v3, p4

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 7
    .parameter "ev"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 370
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 373
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 374
    if-eqz p1, :cond_0

    .line 375
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/view/InputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 381
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget-object v4, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 384
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 387
    .local v2, _result:Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 390
    return v2

    .line 379
    .end local v2           #_result:Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 384
    goto :goto_1
.end method

.method public isShowHoveringPointer()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 607
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 610
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 611
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 612
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 613
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 616
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 619
    return v2

    .line 616
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .locals 5
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 523
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 525
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 526
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 527
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 534
    return-void

    .line 526
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 531
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "inputDeviceDescriptor"
    .parameter "keyboardLayoutDescriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 505
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 507
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 517
    return-void

    .line 514
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "inputDeviceDescriptor"
    .parameter "keyboardLayoutDescriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 455
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 457
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 460
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    return-void

    .line 464
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setLedState(Z)I
    .locals 6
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 589
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 592
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 593
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 595
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 596
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 599
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 602
    return v2

    .line 599
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setStartedShutdown(Z)V
    .locals 5
    .parameter "isStarted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 574
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 576
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 577
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 579
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 585
    return-void

    .line 582
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tryPointerSpeed(I)V
    .locals 5
    .parameter "speed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 352
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 354
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 363
    return-void

    .line 360
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public vibrate(I[JILandroid/os/IBinder;)V
    .locals 5
    .parameter "deviceId"
    .parameter "pattern"
    .parameter "repeat"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 540
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 542
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 545
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 547
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 548
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 554
    return-void

    .line 551
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

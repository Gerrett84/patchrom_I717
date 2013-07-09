.class Lcom/sec/android/app/camera/Camcorder$TorchSettingObserver;
.super Landroid/database/ContentObserver;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TorchSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camcorder;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$TorchSettingObserver;->this$0:Lcom/sec/android/app/camera/Camcorder;

    .line 1342
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1343
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1347
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1348
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$TorchSettingObserver;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "torch_light"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 1349
    .local v0, externalTorchEnabled:Z
    :goto_0
    const-string v3, "Camcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Torch value changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$TorchSettingObserver;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    .line 1353
    .local v1, menuDimController:Lcom/sec/android/app/camera/MenuDimController;
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1354
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$TorchSettingObserver;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/MenuDimController;->setIsFlashDimmed(Z)V

    .line 1355
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder$TorchSettingObserver;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->resetDim()V

    .line 1356
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder$TorchSettingObserver;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->refreshButtonDimForCamera()V

    .line 1358
    :cond_0
    return-void

    .end local v0           #externalTorchEnabled:Z
    .end local v1           #menuDimController:Lcom/sec/android/app/camera/MenuDimController;
    :cond_1
    move v0, v2

    .line 1348
    goto :goto_0
.end method

.class Lcom/android/internal/policy/impl/PhoneWindowManager$37;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$needsMenu:Z

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7962
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$visibility:I

    iput-boolean p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$needsMenu:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 7965
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 7966
    .local v1, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 7967
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$visibility:I

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(II)V

    .line 7968
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$needsMenu:Z

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->topAppWindowChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7974
    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 7970
    :catch_0
    move-exception v0

    .line 7972
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

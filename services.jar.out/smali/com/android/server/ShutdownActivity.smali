.class public Lcom/android/server/ShutdownActivity;
.super Landroid/app/Activity;
.source "ShutdownActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownActivity"


# instance fields
.field private mConfirm:Z

.field private mFake:Z

.field private mReboot:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ShutdownActivity;->mFake:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ShutdownActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/server/ShutdownActivity;->mReboot:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/ShutdownActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/server/ShutdownActivity;->mConfirm:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/server/ShutdownActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 43
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "fake"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const-string v2, "ShutdownActivity"

    const-string v3, "Fake Shutdown"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-boolean v6, p0, Lcom/android/server/ShutdownActivity;->mFake:Z

    .line 71
    :goto_0
    return-void

    .line 48
    :cond_0
    iput-boolean v5, p0, Lcom/android/server/ShutdownActivity;->mFake:Z

    .line 50
    const-string v2, "android.intent.action.REBOOT"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ShutdownActivity;->mReboot:Z

    .line 51
    const-string v2, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ShutdownActivity;->mConfirm:Z

    .line 52
    const-string v2, "ShutdownActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate(): confirm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ShutdownActivity;->mConfirm:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/android/server/ShutdownActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {p0, v5}, Lcom/android/server/ShutdownActivity;->setRequestedOrientation(I)V

    .line 61
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 62
    .local v0, h:Landroid/os/Handler;
    new-instance v2, Lcom/android/server/ShutdownActivity$1;

    invoke-direct {v2, p0}, Lcom/android/server/ShutdownActivity$1;-><init>(Lcom/android/server/ShutdownActivity;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 58
    .end local v0           #h:Landroid/os/Handler;
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/server/ShutdownActivity;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 92
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 93
    const-string v0, "ShutdownActivity"

    const-string v1, "back button pressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 79
    iget-boolean v0, p0, Lcom/android/server/ShutdownActivity;->mFake:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/pm/FakeShutdown;->fakeState()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 81
    const-string v0, "ShutdownActivity"

    const-string v1, "finish shutdownactivity immediately right after pausing"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/android/server/ShutdownActivity;->finish()V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v0, "ShutdownActivity"

    const-string v1, "Tracking ShutdownActivity pause"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

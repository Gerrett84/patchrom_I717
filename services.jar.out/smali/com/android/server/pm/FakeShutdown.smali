.class public Lcom/android/server/pm/FakeShutdown;
.super Ljava/lang/Thread;
.source "FakeShutdown.java"


# static fields
.field public static final DOWN_FINISH:I = 0x4

.field public static final DOWN_LOWLV:I = 0x2

.field public static final DOWN_START:I = 0x1

.field public static final NOTHING:I = 0x0

.field public static final UP_FINISH:I = 0x5

.field public static final UP_START:I = 0x3


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/ShutdownDialog;)V
    .locals 0
    .parameter "context"
    .parameter "dlg"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static addFakeConfirm(Landroid/content/Context;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter "context"
    .parameter "dialog"

    .prologue
    .line 40
    return-void
.end method

.method public static fakeState()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, -0x1

    return v0
.end method

.method public static isFake()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public static needFake(Landroid/content/Context;ZZZLjava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "reboot"
    .parameter "silent"
    .parameter "confirm"
    .parameter "reason"

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public static updateBatteryState(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

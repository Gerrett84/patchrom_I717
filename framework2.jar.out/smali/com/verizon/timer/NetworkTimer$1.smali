.class Lcom/verizon/timer/NetworkTimer$1;
.super Lcom/verizon/timer/NetworkTimerTask;
.source "NetworkTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/timer/NetworkTimer;->scheduleImplExt(Ljava/util/TimerTask;JJIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verizon/timer/NetworkTimer;


# direct methods
.method constructor <init>(Lcom/verizon/timer/NetworkTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/verizon/timer/NetworkTimer$1;->this$0:Lcom/verizon/timer/NetworkTimer;

    invoke-direct {p0}, Lcom/verizon/timer/NetworkTimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/verizon/timer/NetworkTimerTask;->wrapTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->run()V

    .line 487
    return-void
.end method

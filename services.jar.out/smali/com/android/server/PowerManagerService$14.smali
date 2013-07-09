.class Lcom/android/server/PowerManagerService$14;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4100
    iput-object p1, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4102
    iget-object v0, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsTablet:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$9600(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4105
    :cond_0
    return-void
.end method

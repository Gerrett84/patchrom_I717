.class Landroid/inputmethodservice/InputMethodService$4;
.super Ljava/lang/Object;
.source "InputMethodService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodService;->setExtractView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter

    .prologue
    .line 1335
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$4;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$4;->this$0:Landroid/inputmethodservice/InputMethodService;

    #getter for: Landroid/inputmethodservice/InputMethodService;->clipEx:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->access$300(Landroid/inputmethodservice/InputMethodService;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 1338
    return-void
.end method

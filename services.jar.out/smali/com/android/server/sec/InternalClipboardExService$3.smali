.class Lcom/android/server/sec/InternalClipboardExService$3;
.super Landroid/os/Handler;
.source "InternalClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/InternalClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/InternalClipboardExService;


# direct methods
.method constructor <init>(Lcom/android/server/sec/InternalClipboardExService;)V
    .locals 0
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 725
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 774
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "handler msg : default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 777
    :cond_1
    :goto_0
    return-void

    .line 732
    :pswitch_0
    const/4 v0, 0x0

    .line 733
    .local v0, isClearDialogShown:Z
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 734
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 735
    const/4 v0, 0x1

    .line 736
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    .line 738
    :cond_2
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    .line 741
    :cond_3
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    new-instance v2, Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/sec/ClippedDataPickerDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1, v2}, Lcom/android/server/sec/InternalClipboardExService;->access$402(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;

    .line 744
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I
    invoke-static {v2}, Lcom/android/server/sec/InternalClipboardExService;->access$600(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 747
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->show()V

    .line 753
    if-eqz v0, :cond_1

    .line 754
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->createClearConfirmDialog(Landroid/content/Context;)V

    .line 755
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->show()V

    goto/16 :goto_0

    .line 761
    .end local v0           #isClearDialogShown:Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 762
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I
    invoke-static {v2}, Lcom/android/server/sec/InternalClipboardExService;->access$600(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto/16 :goto_0

    .line 766
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 767
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "ClipboardServiceEx"

    const-string v2, "mCBPickerDialog enter case. MSG_DISMISS_DIALOG"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_4
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    .line 770
    :cond_5
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1, v2}, Lcom/android/server/sec/InternalClipboardExService;->access$402(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;

    goto/16 :goto_0

    .line 725
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

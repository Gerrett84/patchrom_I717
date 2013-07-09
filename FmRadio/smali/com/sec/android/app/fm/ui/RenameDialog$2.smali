.class Lcom/sec/android/app/fm/ui/RenameDialog$2;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/ui/RenameDialog;->getInputFilters(I)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/ui/RenameDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/ui/RenameDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/RenameDialog$2;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v4, 0x1

    const/16 v6, 0xc

    .line 121
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    if-ne v1, v6, :cond_2

    sub-int v1, p6, p5

    if-eq v1, v4, :cond_0

    sub-int v1, p6, p5

    if-ne v1, v6, :cond_1

    :cond_0
    sub-int v1, p3, p2

    if-le v1, v6, :cond_2

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RenameDialog$2;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameDialog;->toast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->access$100(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RenameDialog$2;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameDialog;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/fm/ui/RenameDialog;->access$000(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00b5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RenameDialog$2;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameDialog;->toast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->access$100(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RenameDialog$2;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameDialog;->editText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->access$200(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 127
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RenameDialog$2;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameDialog;->editText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->access$200(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 128
    .local v0, selection:I
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RenameDialog$2;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameDialog;->editText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->access$200(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RenameDialog$2;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameDialog;->editText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->access$200(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 131
    .end local v0           #selection:I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

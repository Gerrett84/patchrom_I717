.class Lcom/sec/android/app/fm/MainActivity$20;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 4212
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$20;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 11
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 4217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4218
    .local v5, newText:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    move/from16 v0, p5

    invoke-interface {p4, v9, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4219
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4220
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v9

    move/from16 v0, p6

    invoke-interface {p4, v0, v9}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4222
    const-string v7, "^1$|^10$|^10[0-8]$|^10[0-8]\\.$|^10[0-7]\\.\\d$|^108\\.0$|^8$|^8[7-9]$|^8[7-9]\\.$|^87\\.[5-9]$|^8[8-9]\\.\\d$|^9$|^9[0-9]$|^9[0-9]\\.$|^9[0-9]\\.\\d$"

    .line 4223
    .local v7, patternString:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v9

    const/16 v10, 0x32

    if-ne v9, v10, :cond_0

    .line 4224
    const-string v7, "^1$|^10$|^10[0-8]$|^10[0-8]\\.$|^10[0-7]\\.\\d$|^108\\.0$|^8$|^8[7-9]$|^8[7-9]\\.$|^87\\.[5-9]$|^8[8-9]\\.\\d$|^9$|^9[0-9]$|^9[0-9]\\.$|^9[0-9]\\.\\d$|^10[0-7]\\.\\d[05]$|^87\\.[5-9][05]$|^8[8-9]\\.\\d[05]$|^9[0-9]\\.\\d[05]$"

    .line 4226
    :cond_0
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 4227
    .local v6, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 4229
    .local v4, matcher:Ljava/util/regex/Matcher;
    const-string v7, "^10[0-7]\\.\\d$|^108\\.0$|^87\\.[5-9]$|^8[8-9]\\.\\d$|^9[0-9]\\.\\d$"

    .line 4230
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v9

    const/16 v10, 0x32

    if-ne v9, v10, :cond_1

    .line 4231
    const-string v7, "^10[0-7]\\.\\d$|^108\\.0$|^87\\.[5-9]$|^8[8-9]\\.\\d$|^9[0-9]\\.\\d$|^10[0-7]\\.\\d[05]$|^87\\.[5-9][05]$|^8[8-9]\\.\\d[05]$|^9[0-9]\\.\\d[05]$"

    .line 4233
    :cond_1
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 4235
    .local v2, enablePattern:Ljava/util/regex/Pattern;
    const-string v8, ""

    .line 4236
    .local v8, returnText:Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4237
    .local v3, filteredText:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    move/from16 v0, p5

    invoke-interface {p4, v9, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4238
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4239
    move-object v8, p1

    .line 4240
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4242
    :cond_2
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v9

    move/from16 v0, p6

    invoke-interface {p4, v0, v9}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4244
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 4245
    .local v1, enableMatcher:Ljava/util/regex/Matcher;
    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$20;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v9}, Lcom/sec/android/app/fm/MainActivity;->access$7200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 4246
    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$20;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v9}, Lcom/sec/android/app/fm/MainActivity;->access$7200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4249
    :cond_3
    return-object v8
.end method

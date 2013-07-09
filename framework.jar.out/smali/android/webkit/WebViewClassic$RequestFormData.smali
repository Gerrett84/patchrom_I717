.class Landroid/webkit/WebViewClassic$RequestFormData;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestFormData"
.end annotation


# instance fields
.field private mAutoComplete:Z

.field private mAutoFillable:Z

.field private mName:Ljava/lang/String;

.field private mUpdateMessage:Landroid/os/Message;

.field private mUrl:Ljava/lang/String;

.field private mWebSettings:Landroid/webkit/WebSettingsClassic;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "url"
    .parameter "msg"
    .parameter "autoFillable"
    .parameter "autoComplete"

    .prologue
    .line 6642
    iput-object p1, p0, Landroid/webkit/WebViewClassic$RequestFormData;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6643
    iput-object p2, p0, Landroid/webkit/WebViewClassic$RequestFormData;->mName:Ljava/lang/String;

    .line 6644
    invoke-static {p3}, Landroid/webkit/WebTextView;->urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic$RequestFormData;->mUrl:Ljava/lang/String;

    .line 6645
    iput-object p4, p0, Landroid/webkit/WebViewClassic$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    .line 6646
    iput-boolean p5, p0, Landroid/webkit/WebViewClassic$RequestFormData;->mAutoFillable:Z

    .line 6647
    iput-boolean p6, p0, Landroid/webkit/WebViewClassic$RequestFormData;->mAutoComplete:Z

    .line 6648
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic$RequestFormData;->mWebSettings:Landroid/webkit/WebSettingsClassic;

    .line 6649
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6653
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6655
    .local v1, pastEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic$RequestFormData;->mAutoFillable:Z

    if-eqz v2, :cond_0

    .line 6659
    iget-object v2, p0, Landroid/webkit/WebViewClassic$RequestFormData;->mWebSettings:Landroid/webkit/WebSettingsClassic;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkit/WebViewClassic$RequestFormData;->mWebSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getAutoFillProfile()Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/webkit/WebViewClassic$RequestFormData;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104043c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebViewClassic$RequestFormData;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$4100(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore$AutoFillData;->getPreviewString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6664
    iget-object v2, p0, Landroid/webkit/WebViewClassic$RequestFormData;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1000(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/AutoCompletePopup;->setIsAutoFillProfileSet(Z)V

    .line 6674
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic$RequestFormData;->mAutoComplete:Z

    if-eqz v2, :cond_1

    .line 6675
    iget-object v2, p0, Landroid/webkit/WebViewClassic$RequestFormData;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebViewClassic$RequestFormData;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/WebViewClassic$RequestFormData;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewDatabaseClassic;->getFormData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6678
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 6679
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$RequestFormData;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090141

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 6683
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/webkit/WebViewClassic$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6684
    iget-object v2, p0, Landroid/webkit/WebViewClassic$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 6686
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_2
    return-void

    .line 6668
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebViewClassic$RequestFormData;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104043d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6670
    iget-object v2, p0, Landroid/webkit/WebViewClassic$RequestFormData;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1000(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/AutoCompletePopup;->setIsAutoFillProfileSet(Z)V

    goto :goto_0
.end method

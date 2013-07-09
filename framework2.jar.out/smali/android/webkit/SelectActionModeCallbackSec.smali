.class public Landroid/webkit/SelectActionModeCallbackSec;
.super Ljava/lang/Object;
.source "SelectActionModeCallbackSec.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SelectActionModeCallbackSec"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field public mIsEditable:Z

.field private mRecreate:Z

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setMenuVisibility(Landroid/view/Menu;ZI)V
    .locals 1
    .parameter "menu"
    .parameter "visible"
    .parameter "resourceId"

    .prologue
    .line 271
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 272
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 275
    :cond_0
    return-void
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 69
    :cond_0
    return-void
.end method

.method finish(Z)V
    .locals 0
    .parameter "recreate"

    .prologue
    .line 73
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    .line 74
    invoke-virtual {p0}, Landroid/webkit/SelectActionModeCallbackSec;->finish()V

    .line 75
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "mode"
    .parameter "item"

    .prologue
    const/16 v7, 0x7530

    const/16 v6, 0x7d0

    const/4 v4, 0x0

    .line 172
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 254
    :goto_0
    return v4

    .line 174
    :sswitch_0
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->cutSelectionSec()V

    .line 175
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 254
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 181
    :sswitch_1
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->copySelectionSec()Z

    .line 183
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 184
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 188
    :sswitch_2
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 189
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 197
    :sswitch_3
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 198
    const-string v4, "SelectActionModeCallbackSec"

    const-string v5, "mWebView.getSelectionSec() is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 201
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 202
    .local v2, selection:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 203
    const-string v4, "SelectActionModeCallbackSec"

    const-string v5, "onActionItemClicked: selected string is too long. Cut it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 207
    :cond_1
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 209
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 213
    .end local v2           #selection:Ljava/lang/StringBuffer;
    :sswitch_4
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->selectAllSec()Z

    goto :goto_1

    .line 217
    :sswitch_5
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, sel:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 219
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 220
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5, v1, v4}, Landroid/webkit/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 225
    .end local v1           #sel:Ljava/lang/String;
    :sswitch_6
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 226
    const-string v4, "SelectActionModeCallbackSec"

    const-string v5, "mWebView.getSelectionSec() is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 230
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 231
    .local v3, stringBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 232
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 235
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, i:Landroid/content/Intent;
    const-string v4, "query"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 238
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 240
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_4

    .line 241
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    :cond_4
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 247
    .end local v0           #i:Landroid/content/Intent;
    .end local v3           #stringBuffer:Ljava/lang/StringBuffer;
    :sswitch_7
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->pasteFromClipboardEx()V

    goto/16 :goto_1

    .line 172
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020020 -> :sswitch_0
        0x1020021 -> :sswitch_1
        0x1020022 -> :sswitch_2
        0x102025d -> :sswitch_7
        0x102047f -> :sswitch_4
        0x1020480 -> :sswitch_3
        0x1020481 -> :sswitch_5
        0x1020482 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 12
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v10

    const v11, 0x1140007

    invoke-virtual {v10, v11, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 84
    iget-object v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 92
    .local v6, context:Landroid/content/Context;
    const-string v10, "clipboard"

    invoke-virtual {v6, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ClipboardManager;

    move-object v4, v10

    check-cast v4, Landroid/content/ClipboardManager;

    .line 94
    .local v4, cm:Landroid/content/ClipboardManager;
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v7

    .line 99
    .local v7, isFocusable:Z
    iget-boolean v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v10, :cond_0

    .line 100
    iget-object v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v10

    iput-boolean v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    .line 103
    :cond_0
    const/4 v8, 0x0

    .line 104
    .local v8, isTypePassword:Z
    const/4 v9, 0x0

    .line 105
    .local v9, variation:I
    iget-object v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v10, v10, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v10, :cond_1

    .line 106
    iget-object v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v10, v10, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getInputType()I

    move-result v10

    and-int/lit16 v9, v10, 0xff0

    .line 108
    const/16 v10, 0xe0

    if-ne v9, v10, :cond_1

    .line 109
    const/4 v8, 0x1

    .line 114
    :cond_1
    iget-boolean v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v10, :cond_5

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->canShowDialog()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v3, 0x1

    .line 115
    .local v3, canPaste:Z
    :goto_0
    iget-boolean v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-nez v10, :cond_6

    if-eqz v7, :cond_6

    const/4 v2, 0x1

    .line 116
    .local v2, canFind:Z
    :goto_1
    iget-boolean v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v10, :cond_7

    if-nez v8, :cond_7

    const/4 v1, 0x1

    .line 117
    .local v1, canCut:Z
    :goto_2
    iget-boolean v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v10, :cond_8

    iget-object v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->canShowDialog()Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v0, 0x1

    .line 119
    .local v0, canClipboard:Z
    :goto_3
    iget-object v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebSettingsClassic;->isBrowserApp()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 120
    and-int/2addr v3, v7

    .line 121
    and-int/2addr v2, v7

    .line 122
    and-int/2addr v1, v7

    .line 125
    :cond_2
    const v10, 0x1020481

    invoke-direct {p0, p2, v2, v10}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 126
    const v10, 0x1020022

    invoke-direct {p0, p2, v3, v10}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 127
    const v10, 0x1020020

    invoke-direct {p0, p2, v1, v10}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 129
    iget-boolean v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v10, :cond_3

    .line 130
    const v10, 0x1020021

    invoke-direct {p0, p2, v1, v10}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 131
    const v10, 0x1020480

    invoke-direct {p0, p2, v1, v10}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 132
    const v10, 0x1020482

    invoke-direct {p0, p2, v1, v10}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 134
    :cond_3
    const v10, 0x102025d

    invoke-direct {p0, p2, v0, v10}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 135
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 142
    iget-object v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 143
    .local v5, config:Landroid/content/res/Configuration;
    iget v10, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v10, v10, 0x4

    const/4 v11, 0x4

    if-eq v10, v11, :cond_4

    .line 144
    iget v10, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 145
    const/4 v10, 0x0

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 146
    const/4 v10, 0x1

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 147
    const/4 v10, 0x2

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 148
    const/4 v10, 0x3

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 149
    const/4 v10, 0x4

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 150
    const/4 v10, 0x5

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 161
    :cond_4
    :goto_4
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 162
    const/4 v10, 0x1

    return v10

    .line 114
    .end local v0           #canClipboard:Z
    .end local v1           #canCut:Z
    .end local v2           #canFind:Z
    .end local v3           #canPaste:Z
    .end local v5           #config:Landroid/content/res/Configuration;
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 115
    .restart local v3       #canPaste:Z
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 116
    .restart local v2       #canFind:Z
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 117
    .restart local v1       #canCut:Z
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 152
    .restart local v0       #canClipboard:Z
    .restart local v5       #config:Landroid/content/res/Configuration;
    :cond_9
    const/4 v10, 0x0

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 153
    const/4 v10, 0x1

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 154
    const/4 v10, 0x2

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 155
    const/4 v10, 0x3

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 156
    const/4 v10, 0x4

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 157
    const/4 v10, 0x5

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 267
    :goto_0
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->performSelectionDoneAction()V

    .line 268
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method protected onSetWebView()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method setWebViewClassic(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "webViewClassic"

    .prologue
    .line 47
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    .line 48
    invoke-virtual {p0}, Landroid/webkit/SelectActionModeCallbackSec;->onSetWebView()V

    .line 49
    return-void
.end method

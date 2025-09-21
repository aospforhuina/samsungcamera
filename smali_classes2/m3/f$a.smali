.class Lm3/f$a;
.super Landroid/view/ActionMode$Callback2;
.source "VisionTextActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm3/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/MenuItem;",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lm3/f;


# direct methods
.method constructor <init>(Lm3/f;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm3/f$a;->b:Lm3/f;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm3/f$a;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Landroid/view/Menu;Landroid/app/RemoteAction;III)Landroid/view/MenuItem;
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1020041

    .line 2
    invoke-interface {p1, v1, p3, p4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 4
    invoke-virtual {p2}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p3

    iget-object p4, p0, Lm3/f$a;->b:Lm3/f;

    iget-object p4, p4, Lm3/f;->a:Lm3/w;

    invoke-virtual {p4}, Lm3/w;->i0()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 6
    :cond_0
    invoke-interface {p1, p5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 7
    iget-object p0, p0, Lm3/f$a;->a:Ljava/util/Map;

    .line 8
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p2

    invoke-static {p2}, Lm3/f;->n(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object p2

    .line 9
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private b(Landroid/view/MenuItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm3/f$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lm3/f$a;->b:Lm3/f;

    iget-object p0, p0, Lm3/f;->a:Lm3/w;

    invoke-virtual {p0}, Lm3/w;->s0()Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/view/Menu;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lm3/f$a;->d(Landroid/view/Menu;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x1040001

    .line 2
    invoke-interface {p1, v0, v1, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 3
    iget-object p0, p0, Lm3/f$a;->b:Lm3/f;

    iget-object p0, p0, Lm3/f;->a:Lm3/w;

    invoke-virtual {p0}, Lm3/w;->A0()Z

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x104000d

    const/4 v1, 0x2

    .line 4
    invoke-interface {p1, v0, v1, v1, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 5
    :cond_0
    sget p0, Lb3/e;->a:I

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1, v1, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method private d(Landroid/view/Menu;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lm3/f$a;->b:Lm3/f;

    invoke-static {v0}, Lm3/f;->l(Lm3/f;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lm3/f$a;->b:Lm3/f;

    invoke-static {v0}, Lm3/f;->l(Lm3/f;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x1020041

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lm3/f$a;->b:Lm3/f;

    invoke-static {v0}, Lm3/f;->l(Lm3/f;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/RemoteAction;

    const v4, 0x1020041

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lm3/f$a;->a(Landroid/view/Menu;Landroid/app/RemoteAction;III)Landroid/view/MenuItem;

    .line 4
    :cond_1
    iget-object v0, p0, Lm3/f$a;->b:Lm3/f;

    invoke-static {v0}, Lm3/f;->l(Lm3/f;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v2, 0x4

    .line 5
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x3

    .line 6
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 7
    iget-object v3, p0, Lm3/f$a;->b:Lm3/f;

    invoke-static {v3}, Lm3/f;->l(Lm3/f;)Landroid/view/textclassifier/TextClassification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/app/RemoteAction;

    add-int/lit8 v3, v2, 0x4

    add-int/lit8 v8, v3, -0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v7, v8

    invoke-direct/range {v4 .. v9}, Lm3/f$a;->a(Landroid/view/Menu;Landroid/app/RemoteAction;III)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 8
    :cond_3
    :goto_1
    invoke-static {}, Lm3/f;->m()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "updateAssistMenuItems - Null or Empty"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 2
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x1020041

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p2}, Lm3/f$a;->b(Landroid/view/MenuItem;)V

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lm3/f$a;->b:Lm3/f;

    iget-object v2, v2, Lm3/f;->a:Lm3/w;

    invoke-virtual {v2}, Lm3/w;->i0()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    iget-object p2, p0, Lm3/f$a;->b:Lm3/f;

    iget-object p2, p2, Lm3/f;->a:Lm3/w;

    invoke-virtual {p2}, Lm3/w;->i0()Landroid/content/Context;

    move-result-object p2

    const-string v2, "keyguard"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    :cond_2
    if-eqz p2, :cond_3

    .line 6
    invoke-virtual {p2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    iget-object v2, p0, Lm3/f$a;->b:Lm3/f;

    invoke-static {v2, v1}, Lm3/f;->i(Lm3/f;Z)Z

    .line 8
    iget-object v2, p0, Lm3/f$a;->b:Lm3/f;

    iget-object v3, v2, Lm3/f;->a:Lm3/w;

    invoke-virtual {v3}, Lm3/w;->Y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lm3/f;->j(Lm3/f;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lm3/f$a;->b:Lm3/f;

    iget-object v2, v2, Lm3/f;->a:Lm3/w;

    invoke-virtual {v2}, Lm3/w;->i0()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lm3/f$a$a;

    invoke-direct {v3, p0}, Lm3/f$a$a;-><init>(Lm3/f$a;)V

    invoke-virtual {p2, v2, v3}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p2, p0, Lm3/f$a;->b:Lm3/f;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lm3/f;->i(Lm3/f;Z)Z

    .line 11
    iget-object p2, p0, Lm3/f$a;->b:Lm3/f;

    invoke-static {p2}, Lm3/f;->k(Lm3/f;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_6

    const/high16 v2, 0x10000000

    .line 12
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 13
    iget-object v2, p0, Lm3/f$a;->b:Lm3/f;

    iget-object v2, v2, Lm3/f;->a:Lm3/w;

    invoke-virtual {v2}, Lm3/w;->i0()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 14
    :cond_4
    iget-object p2, p0, Lm3/f$a;->b:Lm3/f;

    iget-object p2, p2, Lm3/f;->a:Lm3/w;

    invoke-virtual {p2}, Lm3/w;->W0()V

    .line 15
    iget-object p2, p0, Lm3/f$a;->b:Lm3/f;

    iget-object v2, p2, Lm3/f;->a:Lm3/w;

    invoke-virtual {v2}, Lm3/w;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lm3/f;->D(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_5
    iget-object v2, p0, Lm3/f$a;->b:Lm3/f;

    iget-object v2, v2, Lm3/f;->a:Lm3/w;

    invoke-virtual {v2}, Lm3/w;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    .line 17
    iget-object v2, p0, Lm3/f$a;->b:Lm3/f;

    invoke-static {v2, p2}, Lm3/f;->g(Lm3/f;Landroid/content/ClipData;)Z

    :cond_6
    :goto_0
    if-eq p1, v0, :cond_7

    .line 18
    iget-object p0, p0, Lm3/f$a;->b:Lm3/f;

    iget-object p0, p0, Lm3/f;->a:Lm3/w;

    invoke-virtual {p0}, Lm3/w;->j()V

    :cond_7
    return v1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm3/f$a;->b:Lm3/f;

    iget-object v0, v0, Lm3/f;->a:Lm3/w;

    invoke-virtual {v0}, Lm3/w;->m0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 5
    invoke-direct {p0, p2}, Lm3/f$a;->c(Landroid/view/Menu;)V

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 1
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    .line 2
    iget-object p0, p0, Lm3/f$a;->b:Lm3/f;

    iget-object v0, p0, Lm3/f;->h:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 3
    iget v2, p0, Lm3/f;->e:I

    .line 4
    iget-object v3, p0, Lm3/f;->i:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 5
    iget v4, p0, Lm3/f;->c:I

    .line 6
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v0

    .line 7
    iget-object p0, p0, Lm3/f;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 8
    iget v6, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9
    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 10
    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 11
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gez p2, :cond_1

    add-int/2addr v1, p0

    goto :goto_1

    :cond_1
    sub-int/2addr v1, p0

    .line 13
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gez p1, :cond_2

    add-int/2addr v2, p0

    goto :goto_2

    :cond_2
    sub-int/2addr v2, p0

    .line 14
    :goto_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gez p2, :cond_3

    add-int/2addr v3, p0

    goto :goto_3

    :cond_3
    sub-int/2addr v3, p0

    .line 15
    :goto_3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gez p1, :cond_4

    add-int/2addr v4, p0

    goto :goto_4

    :cond_4
    sub-int/2addr v4, p0

    :goto_4
    add-int/2addr v4, v5

    .line 16
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    invoke-direct {p0, p2}, Lm3/f$a;->d(Landroid/view/Menu;)V

    const/4 p0, 0x0

    return p0
.end method

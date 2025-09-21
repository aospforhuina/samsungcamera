.class Lcom/google/android/material/navigation/d$e;
.super Landroidx/appcompat/view/menu/MenuPopupHelper;
.source "NavigationBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/navigation/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/navigation/d;


# direct methods
.method private constructor <init>(Lcom/google/android/material/navigation/d;Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 6

    .line 2
    iput-object p1, p0, Lcom/google/android/material/navigation/d$e;->a:Lcom/google/android/material/navigation/d;

    .line 3
    sget v5, Lq1/b;->a:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    const p2, 0x800005

    .line 4
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 5
    invoke-static {p1}, Lcom/google/android/material/navigation/d;->c(Lcom/google/android/material/navigation/d;)Lcom/google/android/material/navigation/d$f;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 6
    invoke-virtual {p0, p4}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setAnchorView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->seslSetOverlapAnchor(Z)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->seslForceShowUpper(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/navigation/d;Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZLcom/google/android/material/navigation/d$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/material/navigation/d$e;-><init>(Lcom/google/android/material/navigation/d;Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/d$e;->a:Lcom/google/android/material/navigation/d;

    invoke-static {v0}, Lcom/google/android/material/navigation/d;->d(Lcom/google/android/material/navigation/d;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/d$e;->a:Lcom/google/android/material/navigation/d;

    invoke-static {v0}, Lcom/google/android/material/navigation/d;->d(Lcom/google/android/material/navigation/d;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/d$e;->a:Lcom/google/android/material/navigation/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/navigation/d;->e(Lcom/google/android/material/navigation/d;Lcom/google/android/material/navigation/d$e;)Lcom/google/android/material/navigation/d$e;

    .line 4
    invoke-super {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->onDismiss()V

    return-void
.end method

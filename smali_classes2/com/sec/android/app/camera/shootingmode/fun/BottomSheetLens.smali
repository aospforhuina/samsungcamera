.class public Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;
.super Lcom/google/android/material/bottomsheet/b;
.source "BottomSheetLens.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;
    }
.end annotation


# instance fields
.field private mBottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private mBottomSheetLensCallback:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;

.field private mMoreLensPopupBinding:Lo5/z4;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mBottomSheetLensCallback:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->lambda$onCreateDialog$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->lambda$onCreateDialog$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->lambda$onCreateDialog$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mBottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mBottomSheetLensCallback:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;->onPopupTouch(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mBottomSheetLensCallback:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;->onDiscoverButtonClicked()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$2(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->dismiss()V

    return-void
.end method


# virtual methods
.method public getTheme()I
    .locals 0

    const p0, 0x7f130157

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->getTheme()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/b;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomsheet/a;

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d00f6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lo5/z4;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mMoreLensPopupBinding:Lo5/z4;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/a;->setContentView(Landroid/view/View;)V

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mBottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f08048c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mBottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070187

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U(I)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mMoreLensPopupBinding:Lo5/z4;

    iget-object v0, v0, Lo5/z4;->c:Landroid/widget/RelativeLayout;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mBottomSheetLensCallback:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;->updateLayoutOrientation()V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mMoreLensPopupBinding:Lo5/z4;

    iget-object v0, v0, Lo5/z4;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12058b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const v4, 0x7f120261

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mMoreLensPopupBinding:Lo5/z4;

    iget-object v0, v0, Lo5/z4;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f1203d3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 14
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mMoreLensPopupBinding:Lo5/z4;

    iget-object v1, v1, Lo5/z4;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 15
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mMoreLensPopupBinding:Lo5/z4;

    iget-object v0, v0, Lo5/z4;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mBottomSheetLensCallback:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;

    invoke-interface {v1}, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;->getLensAdapter()Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mMoreLensPopupBinding:Lo5/z4;

    iget-object v0, v0, Lo5/z4;->b:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/fun/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/fun/c;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mBottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$1;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;)V

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mMoreLensPopupBinding:Lo5/z4;

    iget-object v0, v0, Lo5/z4;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/fun/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/fun/b;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mMoreLensPopupBinding:Lo5/z4;

    iget-object v0, v0, Lo5/z4;->b:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/fun/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/fun/a;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mBottomSheetLensCallback:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;->onBottomSheetDismiss()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mBottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y(I)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public updateOrientation(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mMoreLensPopupBinding:Lo5/z4;

    iget-object p1, p1, Lo5/z4;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mMoreLensPopupBinding:Lo5/z4;

    iget-object p1, p1, Lo5/z4;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->mMoreLensPopupBinding:Lo5/z4;

    iget-object p0, p0, Lo5/z4;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_1
    return-void
.end method

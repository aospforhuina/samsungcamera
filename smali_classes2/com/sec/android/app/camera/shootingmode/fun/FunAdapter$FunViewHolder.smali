.class public Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FunAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FunViewHolder"
.end annotation


# static fields
.field private static final DAMPING_RATIO_SCALE_SHUTTER_BUTTON_TOUCH_DOWN:F = 0.7f

.field private static final DAMPING_RATIO_SCALE_SHUTTER_BUTTON_TOUCH_UP:F = 0.3f

.field private static final MIN_SHUTTER_BUTTON_SCALE_RATIO:F = 0.75f

.field private static final STIFFNESS_SCALE_SHUTTER_BUTTON_TOUCH_DOWN:F = 180.0f

.field private static final STIFFNESS_SCALE_SHUTTER_BUTTON_TOUCH_UP:F = 130.0f


# instance fields
.field private mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field final mContentsThumbnail:Landroid/widget/ImageView;

.field final mContentsUltraWideIndicator:Landroid/view/View;

.field mItem:Landroid/view/View;

.field private mKeyEvent:Z

.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mItem:Landroid/view/View;

    const p1, 0x7f0a02ee

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mContentsThumbnail:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 7
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const p1, 0x7f0a0438

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mContentsUltraWideIndicator:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->lambda$onTouch$1(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    return-void
.end method

.method public static synthetic b(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->lambda$onTouch$0(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    return-void
.end method

.method private static synthetic lambda$onTouch$0(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43020000    # 130.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 2
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method private static synthetic lambda$onTouch$1(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43020000    # 130.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 2
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->c(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->a(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;)Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p0, v1}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;->onSnapButtonClick(Landroid/view/View;IZ)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->a(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;)Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p0, v1}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;->onSnapButtonClick(Landroid/view/View;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mKeyEvent:Z

    const/4 p0, 0x0

    return p0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mKeyEvent:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->c(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->a(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;)Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->b(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/snap/camerakit/lenses/LensesComponent$Lens;

    invoke-interface {p0}, Lcom/snap/camerakit/lenses/LensesComponent$Lens;->getIconUri()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v1, v0, p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;->onSnapButtonLongClick(IZLjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->a(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;)Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->b(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/snap/camerakit/lenses/LensesComponent$Lens;

    invoke-interface {p0}, Lcom/snap/camerakit/lenses/LensesComponent$Lens;->getIconUri()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v1, v2, p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;->onSnapButtonLongClick(IZLjava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/fun/e;->a:Lcom/sec/android/app/camera/shootingmode/fun/e;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/fun/d;->a:Lcom/sec/android/app/camera/shootingmode/fun/d;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mKeyEvent:Z

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->c(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 6
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 7
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p1, v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {p1, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 14
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->a(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;)Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;->onSnapButtonTouch(Landroid/view/MotionEvent;)V

    return v1
.end method

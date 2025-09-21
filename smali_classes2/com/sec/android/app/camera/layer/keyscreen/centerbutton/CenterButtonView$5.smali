.class Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;
.super Ljava/lang/Object;
.source "CenterButtonView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeRightAction$SwipeRightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->lambda$onSwipeRightStart$0(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    return-void
.end method

.method public static synthetic b(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->lambda$onSwipeRightStart$1(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    return-void
.end method

.method private static synthetic lambda$onSwipeRightStart$0(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x44160000    # 600.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 2
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    const v0, 0x3f28f5c3    # 0.66f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method private static synthetic lambda$onSwipeRightStart$1(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x44160000    # 600.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 2
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    const v0, 0x3f28f5c3    # 0.66f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method


# virtual methods
.method public onSwipeMove(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->D(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Lo5/s;

    move-result-object v0

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->D(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Lo5/s;

    move-result-object v0

    iget-object v0, v0, Lo5/s;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {v2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->x(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->y(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->z(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->w(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->v(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {v2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->D(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Lo5/s;

    move-result-object v2

    iget-object v2, v2, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr p1, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->D(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Lo5/s;

    move-result-object p0

    iget-object p0, p0, Lo5/s;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    add-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto/16 :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->w(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->v(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {v2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->D(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Lo5/s;

    move-result-object v2

    iget-object v2, v2, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sub-float/2addr p1, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->D(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Lo5/s;

    move-result-object p0

    iget-object p0, p0, Lo5/s;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    sub-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->z(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->v(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->D(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Lo5/s;

    move-result-object v0

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->D(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Lo5/s;

    move-result-object p0

    iget-object p0, p0, Lo5/s;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_1

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->v(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->D(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Lo5/s;

    move-result-object v0

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->D(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Lo5/s;

    move-result-object p0

    iget-object p0, p0, Lo5/s;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_1
    return-void
.end method

.method public onSwipeRightEnd(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->A(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onSwipeDownEnd()V

    return-void
.end method

.method public onSwipeRightReachMax()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->onSwipeDownReachMax()V

    return-void
.end method

.method public onSwipeRightStart()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->B(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    const/high16 v2, 0x43020000    # 130.0f

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->F(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;Landroidx/dynamicanimation/animation/SpringAnimation;FFF)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->C(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->F(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;Landroidx/dynamicanimation/animation/SpringAnimation;FFF)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->w(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/y;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/y;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->v(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/z;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/z;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->D(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Lo5/s;

    move-result-object p0

    iget-object p0, p0, Lo5/s;->f:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    const/4 p0, 0x1

    return p0
.end method

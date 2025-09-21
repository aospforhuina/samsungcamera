.class public Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CenterButtonView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$View;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;
.implements Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction$SwipeLeftListener;
.implements Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;
.implements Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;


# static fields
.field private static final DAMPING_RATIO_SCALE_SHUTTER_BUTTON_SWIPE_DOWN:F = 0.7f

.field private static final DAMPING_RATIO_SCALE_SHUTTER_BUTTON_TOUCH_DOWN:F = 0.7f

.field private static final DAMPING_RATIO_SCALE_SHUTTER_BUTTON_TOUCH_UP:F = 0.3f

.field private static final DAMPING_RATIO_TRANSLATION_SHUTTER_BUTTON_SWIPE_DOWN:F = 0.66f

.field private static final DAMPING_RATIO_TRANSLATION_SHUTTER_BUTTON_SWIPE_UP:F = 0.5f

.field private static final MIN_SHUTTER_BUTTON_SCALE_RATIO:F = 0.79f

.field private static final STIFFNESS_SCALE_SHUTTER_BUTTON_SWIPE_DOWN:F = 50.0f

.field private static final STIFFNESS_SCALE_SHUTTER_BUTTON_TOUCH_DOWN:F = 1500.0f

.field private static final STIFFNESS_SCALE_SHUTTER_BUTTON_TOUCH_UP:F = 130.0f

.field private static final STIFFNESS_TRANSLATION_SHUTTER_BUTTON_SWIPE_DOWN:F = 600.0f

.field private static final STIFFNESS_TRANSLATION_SHUTTER_BUTTON_SWIPE_UP:F = 200.0f

.field private static final TAG:Ljava/lang/String; = "CenterButtonView"


# instance fields
.field private final CENTER_BUTTON_SIZE:F

.field private mBurstCountTextTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mBurstCountTextTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mBurstShotButtonState:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$BurstShotButtonState;

.field private mButtonActionManager:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;

.field private final mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

.field private mCenterButtonTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mCenterImageAnimationResourceIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCircleToOvalAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCurrentAnimationCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

.field private mIsBurstCountTextShowRequired:Z

.field private mIsRecordingMode:Z

.field private mIsSingleTakeMode:Z

.field private mIsSwipeDownReachMax:Z

.field private mKeyScreenLayerOrientation:I

.field private mOrientation:I

.field private final mOvalToNormalCircleAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mOvalToVideoCircleAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

.field private mQuickTakeButtonState:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

.field private mQuickTakeButtonTouchListener:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonTouchPositionChangeListener;

.field private mScaleXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mScaleYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mShutterColorAnimation:Landroid/animation/ValueAnimator;

.field private final mSwipeRightActionListener:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeRightAction$SwipeRightListener;

.field private mTouchEventConsumed:Z

.field private mTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mViewBinding:Lo5/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07004a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->CENTER_BUTTON_SIZE:F

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsSingleTakeMode:Z

    .line 4
    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$1;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterImageAnimationResourceIdMap:Ljava/util/HashMap;

    .line 5
    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    .line 6
    sget-object v0, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$BurstShotButtonState;->IDLE:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$BurstShotButtonState;

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstShotButtonState:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$BurstShotButtonState;

    .line 7
    sget-object v0, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->IDLE:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonState:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    .line 8
    iput p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mKeyScreenLayerOrientation:I

    const/4 p2, 0x0

    .line 9
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonTouchListener:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonTouchPositionChangeListener;

    .line 10
    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$2;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCircleToOvalAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 11
    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$3;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mOvalToVideoCircleAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 12
    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$4;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mOvalToNormalCircleAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 13
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    :goto_0
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mSwipeRightActionListener:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeRightAction$SwipeRightListener;

    .line 15
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07004a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->CENTER_BUTTON_SIZE:F

    const/4 p2, 0x0

    .line 18
    iput-boolean p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsSingleTakeMode:Z

    .line 19
    new-instance p3, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$1;

    invoke-direct {p3, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$1;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    iput-object p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterImageAnimationResourceIdMap:Ljava/util/HashMap;

    .line 20
    new-instance p3, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-direct {p3}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;-><init>()V

    iput-object p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    .line 21
    sget-object p3, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$BurstShotButtonState;->IDLE:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$BurstShotButtonState;

    iput-object p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstShotButtonState:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$BurstShotButtonState;

    .line 22
    sget-object p3, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->IDLE:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    iput-object p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonState:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    .line 23
    iput p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mKeyScreenLayerOrientation:I

    const/4 p2, 0x0

    .line 24
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonTouchListener:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonTouchPositionChangeListener;

    .line 25
    new-instance p3, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$2;

    invoke-direct {p3, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$2;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    iput-object p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCircleToOvalAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 26
    new-instance p3, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$3;

    invoke-direct {p3, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$3;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    iput-object p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mOvalToVideoCircleAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 27
    new-instance p3, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$4;

    invoke-direct {p3, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$4;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    iput-object p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mOvalToNormalCircleAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 28
    sget-object p3, Lu3/b;->b:Lu3/b;

    invoke-static {p3}, Lu3/d;->e(Lu3/b;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance p2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$5;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    :goto_0
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mSwipeRightActionListener:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeRightAction$SwipeRightListener;

    .line 30
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic A(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mScaleXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static bridge synthetic C(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mScaleYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Lo5/s;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    return-object p0
.end method

.method static bridge synthetic E(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->setBorderStrokeImageVisibility(Z)V

    return-void
.end method

.method static bridge synthetic F(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;Landroidx/dynamicanimation/animation/SpringAnimation;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->startSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;FFF)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$initialize$3(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$hideQuickTakePressEffect$0()V

    return-void
.end method

.method private changeCenterButtonImage(II)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p1, p1, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    .line 5
    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$7;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$7;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;I)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method private checkPhotoTimerCenterButtonAnimation(II)I
    .locals 2

    const v0, 0x7f0804fc

    const v1, 0x7f0804f7

    if-ne p2, v1, :cond_0

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120204

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->setContentDescription(Ljava/lang/String;)V

    const p0, 0x7f0803f9

    return p0

    :cond_0
    if-ne p2, v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1205af

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->setContentDescription(Ljava/lang/String;)V

    const p0, 0x7f08040e

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$initialize$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$initialize$6(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$initialize$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$showQuickTakePressEffect$13(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getCommandIdForAvd(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getCapturingResourceType()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->QUICK_TAKE:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getCapturingResourceType()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->QUICK_TAKE_STOP:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$9;->$SwitchMap$com$sec$android$app$camera$interfaces$CommandId:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p0, p0, v1

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    return-object p1

    .line 3
    :pswitch_1
    sget-object p0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-object p0

    :cond_1
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getSwipeRightBitmap(F)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080469

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f08046b

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 4
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, v0

    move v6, p1

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/camera/util/ImageUtils;->getXfermodeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/PorterDuff$Mode;FF)Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1
.end method

.method public static synthetic h(Landroid/animation/ValueAnimator;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$updateQuickTakeResource$14(Landroid/animation/ValueAnimator;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private handleCenterButtonClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonState:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->IDLE:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCenterButtonClick : state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", buttonResourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getCapturingResourceType()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CenterButtonView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mTouchEventConsumed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mTouchEventConsumed:Z

    return-void

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsRecordingMode:Z

    if-eqz v0, :cond_8

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->CAPTURING:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getCapturingResourceType()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->STOP:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getCapturingResourceType()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->QUICK_TAKE_STOP:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    if-ne v0, v2, :cond_3

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onRecordStopButtonClick()Z

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->IDLE:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne v0, v2, :cond_4

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onRecordButtonClick()Z

    goto :goto_0

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->PAUSING:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne v0, v2, :cond_5

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onRecordStopButtonClick()Z

    .line 12
    :cond_5
    :goto_0
    sget-object v0, Lu3/b;->w4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->IDLE:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne v0, v2, :cond_6

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f120593

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v0

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->PAUSING:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne v0, v1, :cond_9

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1204d3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onShutterButtonClick()Z

    :cond_9
    :goto_1
    return-void
.end method

.method private handlePauseButtonClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->PAUSING:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onResumeButtonClick()Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onPauseButtonClick()Z

    :goto_0
    return-void
.end method

.method private handleStopButtonClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onRecordStopButtonClick()Z

    return-void
.end method

.method public static synthetic i(Landroid/animation/ValueAnimator;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$updateQuickTakeResource$15(Landroid/animation/ValueAnimator;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lo5/s;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/s;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    return-void
.end method

.method private initializeSpringAnimation()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v1, v1, Lo5/s;->f:Landroid/widget/ImageView;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mScaleXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v1, 0x3f4a3d71    # 0.79f

    .line 2
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 3
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v2, v2, Lo5/s;->f:Landroid/widget/ImageView;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v2, v4, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mScaleYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 4
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 5
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v1, v1, Lo5/s;->f:Landroid/widget/ImageView;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 6
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v1, v1, Lo5/s;->a:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method private isAvailableStateForOvalAnimation(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onOvalAnimationRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAnimatorDurationScale(Landroid/content/Context;)F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_1

    sget-object p0, Lu3/b;->b:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    if-ne p2, p1, :cond_2

    return v1

    .line 3
    :cond_2
    sget-object p0, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->CAPTURING:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne p2, p0, :cond_3

    sget-object v0, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->PAUSING:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne p1, v0, :cond_3

    return v1

    .line 4
    :cond_3
    sget-object v0, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->PAUSING:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne p2, v0, :cond_4

    if-ne p1, p0, :cond_4

    return v1

    .line 5
    :cond_4
    sget-object p2, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->IDLE:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-eq p1, p2, :cond_5

    if-eq p1, p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private isLandScape(I)Z
    .locals 0

    const/16 p0, 0x5a

    if-eq p1, p0, :cond_1

    const/16 p0, -0x5a

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic j(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$resetView$10(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic k(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$updateQuickTakeResource$19(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$initialize$4(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$hideQuickTakePressEffect$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->m:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$initialize$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->handleCenterButtonClick()V

    return-void
.end method

.method private static synthetic lambda$initialize$2(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$initialize$3(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/v;

    invoke-direct {v1, p1, v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/v;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initialize$4(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->handleStopButtonClick()V

    return-void
.end method

.method private synthetic lambda$initialize$5(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->handlePauseButtonClick()V

    return-void
.end method

.method private synthetic lambda$initialize$6(Landroid/view/View;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    return-void
.end method

.method private static synthetic lambda$onTouch$7(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 2
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method private static synthetic lambda$onTouch$8(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 2
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method private static synthetic lambda$resetView$10(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private static synthetic lambda$resetView$9(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private static synthetic lambda$showQuickTakePressEffect$11(Landroid/animation/ValueAnimator;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method private static synthetic lambda$showQuickTakePressEffect$12(Landroid/animation/ValueAnimator;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method private synthetic lambda$showQuickTakePressEffect$13(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/e;

    invoke-direct {v1, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/e;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/f;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/f;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$updateQuickTakeResource$14(Landroid/animation/ValueAnimator;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method private static synthetic lambda$updateQuickTakeResource$15(Landroid/animation/ValueAnimator;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method private synthetic lambda$updateQuickTakeResource$16(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/x;

    invoke-direct {v1, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/x;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/d;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/d;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$updateQuickTakeResource$17(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method private static synthetic lambda$updateQuickTakeResource$18(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private static synthetic lambda$updateQuickTakeResource$19(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$updateQuickTakeResource$16(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic n(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$onTouch$8(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    return-void
.end method

.method public static synthetic o(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$initialize$2(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic p(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$onTouch$7(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    return-void
.end method

.method private playOvalAnimation(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;ILandroid/animation/AnimatorListenerAdapter;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->IDLE:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne p1, v0, :cond_0

    const p1, 0x3fd9999a    # 1.7f

    goto :goto_0

    :cond_0
    const p1, -0x40266666    # -1.7f

    .line 2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playOvalAnimation : playBackSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CenterButtonView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->updateOvalAnimationParamsForTablet()V

    .line 5
    :cond_1
    iget-object p4, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p4, p4, Lo5/s;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p4}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    .line 6
    iget-object p4, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p4, p4, Lo5/s;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p4, p3}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iget-object p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p3, p3, Lo5/s;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p3, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 8
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p2, p2, Lo5/s;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p1, p1, Lo5/s;->g:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    return-void
.end method

.method public static synthetic q(Landroid/animation/ValueAnimator;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$showQuickTakePressEffect$11(Landroid/animation/ValueAnimator;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic r(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$updateQuickTakeResource$18(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private resetBurstCounter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->a:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic s(Landroid/animation/ValueAnimator;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$showQuickTakePressEffect$12(Landroid/animation/ValueAnimator;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setBorderStrokeImageVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsSingleTakeMode:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setContentDescription(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;FFF)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 2
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 3
    invoke-virtual {p1, p4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public static synthetic t(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$resetView$9(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic u(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->lambda$updateQuickTakeResource$17(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateCustomResource(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$9;->$SwitchMap$com$sec$android$app$camera$interfaces$KeyScreenLayerManager$CenterButtonState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p1, p1, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p1, p1, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateOvalAnimationParamsForTablet()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v1, v1, Lo5/s;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v1, v1, Lo5/s;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updatePauseStopResource(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;IZ)Z
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->isAvailableStateForOvalAnimation(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)Z

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    .line 4
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$9;->$SwitchMap$com$sec$android$app$camera$interfaces$KeyScreenLayerManager$CenterButtonState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    const/4 v4, 0x4

    if-eq v0, v1, :cond_2

    if-eq v0, v4, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->l:Landroid/widget/ImageView;

    const v1, 0x7f080509

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->k:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1204ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 7
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCircleToOvalAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->requestCenterButtonFocus()V

    .line 11
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->setBorderStrokeImageVisibility(Z)V

    .line 13
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->l:Landroid/widget/ImageView;

    const v1, 0x7f080508

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->k:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12043d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 15
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mOvalToVideoCircleAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    goto :goto_1

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->requestCenterButtonFocus()V

    .line 19
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->setBorderStrokeImageVisibility(Z)V

    :cond_7
    :goto_1
    if-eqz p2, :cond_a

    .line 21
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->isLandScape(I)Z

    move-result p3

    if-eqz p3, :cond_8

    const p3, 0x7f11003f

    goto :goto_2

    :cond_8
    const p3, 0x7f11003e

    .line 22
    :goto_2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p4, :cond_9

    const p3, 0x7f110042

    .line 23
    :cond_9
    invoke-direct {p0, p1, p3, v3, p4}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->playOvalAnimation(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;ILandroid/animation/AnimatorListenerAdapter;Z)V

    :cond_a
    return p2
.end method

.method private updateQuickTakePauseStopResource(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;IZ)Z
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->isAvailableStateForOvalAnimation(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)Z

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    .line 4
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$9;->$SwitchMap$com$sec$android$app$camera$interfaces$KeyScreenLayerManager$CenterButtonState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    const/4 v4, 0x4

    if-eq v0, v1, :cond_2

    if-eq v0, v4, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->l:Landroid/widget/ImageView;

    const v1, 0x7f080509

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->k:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1204ea

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCircleToOvalAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->setBorderStrokeImageVisibility(Z)V

    .line 12
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->l:Landroid/widget/ImageView;

    const v1, 0x7f080508

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->k:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f12043d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mOvalToNormalCircleAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    goto :goto_1

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object v0, v2

    .line 17
    :goto_1
    iput-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCurrentAnimationCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    move-object v2, v0

    :goto_2
    if-eqz p2, :cond_9

    .line 18
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->isLandScape(I)Z

    move-result p3

    if-eqz p3, :cond_7

    const p3, 0x7f110041

    goto :goto_3

    :cond_7
    const p3, 0x7f110040

    .line 19
    :goto_3
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p4, :cond_8

    const p3, 0x7f110043

    .line 20
    :cond_8
    invoke-direct {p0, p1, p3, v2, p4}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->playOvalAnimation(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;ILandroid/animation/AnimatorListenerAdapter;Z)V

    :cond_9
    return p2
.end method

.method private updateQuickTakeResource(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$9;->$SwitchMap$com$sec$android$app$camera$interfaces$KeyScreenLayerManager$CenterButtonState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget-object p1, Lu3/b;->w4:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06001a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060019

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 6
    invoke-static {p1, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b001f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3f19999a    # 0.6f

    const/4 v5, 0x0

    const v6, 0x3f933333    # 1.15f

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/n;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/n;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$8;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p1, p1, Lo5/s;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->resetCenterButtonScale()V

    .line 14
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p1, p1, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/g;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/g;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 16
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p1, p1, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/k;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/k;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 17
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p1, p1, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/j;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/j;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 18
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p1, p1, Lo5/s;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->resetCenterButtonScale()V

    .line 20
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    :goto_0
    return-void
.end method

.method private updateQuickTakeStopResource(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$9;->$SwitchMap$com$sec$android$app$camera$interfaces$KeyScreenLayerManager$CenterButtonState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p1, p1, Lo5/s;->f:Landroid/widget/ImageView;

    const v0, 0x7f0804fc

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p1, p1, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f120593

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const v0, 0x7f0804f7

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->changeCenterButtonImage(II)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p1, p1, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1205af

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateStopResource(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$9;->$SwitchMap$com$sec$android$app$camera$interfaces$KeyScreenLayerManager$CenterButtonState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "Not supported commandId for stop resource : "

    const/16 v2, 0x10

    const/16 v3, 0xf

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$9;->$SwitchMap$com$sec$android$app$camera$interfaces$CommandId:[I

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCurrentAnimationCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_1

    const p1, 0x7f08040a

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCurrentAnimationCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const p1, 0x7f0803f2

    :goto_0
    const v0, 0x7f0804fc

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120593

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 5
    :cond_3
    sget-object p1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$9;->$SwitchMap$com$sec$android$app$camera$interfaces$CommandId:[I

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCurrentAnimationCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v3, :cond_5

    if-ne p1, v2, :cond_4

    const p1, 0x7f08040f

    goto :goto_1

    .line 6
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCurrentAnimationCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const p1, 0x7f08040d

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getResourceId()I

    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1204d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->changeCenterButtonImage(II)V

    .line 10
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->setContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic v(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsBurstCountTextShowRequired:Z

    return p0
.end method

.method static bridge synthetic y(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsSwipeDownReachMax:Z

    return p0
.end method

.method static bridge synthetic z(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mKeyScreenLayerOrientation:I

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonTouchListener:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonTouchPositionChangeListener;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterImageAnimationResourceIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mScaleXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mScaleYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public enableLongPressAction()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mButtonActionManager:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->setLongPressListener(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;)V

    return-void
.end method

.method public enableSwipeDownAction()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mButtonActionManager:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->setSwipeDownListener(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;)V

    return-void
.end method

.method public enableSwipeLeftAction()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mButtonActionManager:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->setSwipeLeftListener(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction$SwipeLeftListener;)V

    return-void
.end method

.method public enableSwipeRightAction()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mButtonActionManager:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mSwipeRightActionListener:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeRightAction$SwipeRightListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->setSwipeRightListener(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeRightAction$SwipeRightListener;)V

    return-void
.end method

.method public enableSwipeUpAction()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mButtonActionManager:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->setSwipeUpListener(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;)V

    return-void
.end method

.method public getBurstCountTextId()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    move-result p0

    return p0
.end method

.method public getCenterButtonState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object p0

    return-object p0
.end method

.method public getQuickTakeButtonState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonState:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    return-object p0
.end method

.method public hideBurstShotCountNumber()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsBurstCountTextShowRequired:Z

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 12
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->a:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideQuickTakePressEffect()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->m:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/w;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/w;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/q;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/q;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/u;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/u;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$6;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/s;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/s;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->k:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/r;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/r;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mButtonActionManager:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/t;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/t;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->initializeSpringAnimation()V

    return-void
.end method

.method public onLongPress()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onLongPress()Z

    return-void
.end method

.method public onMoveAfterSwipeLeft(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onFloatingShutterButtonMove(II)V

    return-void
.end method

.method public onMoveAfterSwipeUp(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onFloatingShutterButtonMove(II)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mOrientation:I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->l:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->o:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->resetCenterButtonScale()V

    return-void
.end method

.method public onSwipeDownEnd(F)V
    .locals 0

    .line 1
    sget-object p1, Lu3/b;->r3:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->resetBurstCounter()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onSwipeDownEnd()V

    return-void
.end method

.method public onSwipeDownReachMax()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsSwipeDownReachMax:Z

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {v1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onSwipeDownReachMax()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsBurstCountTextShowRequired:Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->resetView()V

    :goto_0
    return-void
.end method

.method public onSwipeDownStart()Z
    .locals 5

    .line 1
    sget-object v0, Lu3/b;->r3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onSwipeDownStarted()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mScaleXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v2, 0x42480000    # 50.0f

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->startSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;FFF)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mScaleYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->startSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;FFF)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x44160000    # 600.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v3, 0x3f28f5c3    # 0.66f

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSwipeLeft()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->onSwipeUp()Z

    move-result p0

    return p0
.end method

.method public onSwipeMove(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->CENTER_BUTTON_SIZE:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->a:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsBurstCountTextShowRequired:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsSwipeDownReachMax:Z

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->CENTER_BUTTON_SIZE:F

    mul-float/2addr v2, v1

    sub-float/2addr p1, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    sub-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->CENTER_BUTTON_SIZE:F

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_1
    return-void
.end method

.method public onSwipeUp()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v1, v1, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onShutterButtonSwipeUp(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getCapturingResourceType()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsRecordingMode:Z

    if-nez v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {v1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onShutterButtonTouchUp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    iput-boolean v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mTouchEventConsumed:Z

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsRecordingMode:Z

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {v1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onRecordButtonTouchDown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iput-boolean v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mTouchEventConsumed:Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {v1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onShutterButtonTouchDown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iput-boolean v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mTouchEventConsumed:Z

    .line 11
    :cond_3
    :goto_0
    sget-object v1, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->QUICK_TAKE:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-ne v0, v1, :cond_8

    .line 12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v3, :cond_4

    goto/16 :goto_4

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonTouchListener:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonTouchPositionChangeListener;

    if-eqz v1, :cond_8

    .line 14
    sget-object v1, Lu3/b;->b:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v1, :cond_6

    .line 15
    iget v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mKeyScreenLayerOrientation:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v1, v7

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    :goto_1
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    :goto_2
    int-to-float v7, v7

    div-float/2addr v7, v6

    cmpg-float v6, v1, v7

    if-gez v6, :cond_7

    div-float/2addr v1, v7

    sub-float v1, v4, v1

    .line 19
    iget v6, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->CENTER_BUTTON_SIZE:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070590

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    div-float/2addr v6, v7

    sub-float v6, v4, v6

    mul-float/2addr v6, v1

    sub-float v6, v4, v6

    .line 20
    iget-object v7, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v7, v7, Lo5/s;->m:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 21
    iget-object v7, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v7, v7, Lo5/s;->m:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 22
    iget-object v7, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v7, v7, Lo5/s;->m:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_3

    :cond_7
    move v1, v5

    .line 23
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonTouchListener:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonTouchPositionChangeListener;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-interface {v6, v7, v8, v1}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonTouchPositionChangeListener;->onQuickTakeButtonTouchPositionChanged(FFF)V

    .line 24
    :cond_8
    :goto_4
    sget-object v1, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->NORMAL:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v0, v1, :cond_d

    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_a

    if-eq v0, v2, :cond_9

    if-eq v0, v6, :cond_9

    goto/16 :goto_5

    .line 26
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/o;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/m;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/m;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 28
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mScaleXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x43020000    # 130.0f

    const v8, 0x3e99999a    # 0.3f

    invoke-direct {p0, v0, v1, v8, v4}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->startSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;FFF)V

    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mScaleYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0, v1, v8, v4}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->startSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;FFF)V

    .line 30
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->startSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;FFF)V

    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->startSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;FFF)V

    .line 32
    iput-boolean v7, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsSwipeDownReachMax:Z

    goto :goto_5

    .line 33
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v1, v1, Lo5/s;->f:Landroid/widget/ImageView;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v1, v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 35
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_c

    .line 36
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v1, v1, Lo5/s;->a:Landroid/widget/TextView;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v1, v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 37
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mScaleXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v1, 0x44bb8000    # 1500.0f

    const v4, 0x3f333333    # 0.7f

    const v5, 0x3f4a3d71    # 0.79f

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->startSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;FFF)V

    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mScaleYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->startSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;FFF)V

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->a:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "%d"

    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iput-boolean v7, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsSwipeDownReachMax:Z

    .line 42
    iput-boolean v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsBurstCountTextShowRequired:Z

    .line 43
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonState:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->PREPARING:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    if-eq v0, v1, :cond_10

    sget-object v1, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->STARTING:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    if-ne v0, v1, :cond_e

    goto :goto_6

    .line 44
    :cond_e
    sget-object v0, Lu3/b;->r3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstShotButtonState:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$BurstShotButtonState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$BurstShotButtonState;->CAPTURING:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$BurstShotButtonState;

    if-ne v0, v1, :cond_11

    .line 45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v2, :cond_f

    if-eq v0, v6, :cond_f

    goto :goto_7

    .line 46
    :cond_f
    sget-object p1, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$BurstShotButtonState;->IDLE:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$BurstShotButtonState;

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstShotButtonState:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$BurstShotButtonState;

    .line 47
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onShutterButtonClick()Z

    move-result p0

    return p0

    .line 48
    :cond_10
    :goto_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_14

    if-eq v0, v6, :cond_14

    .line 49
    :cond_11
    :goto_7
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object v0

    new-array v1, v3, [I

    .line 50
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 51
    iget v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mOrientation:I

    const/16 v4, -0x5a

    if-eq v3, v4, :cond_13

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_12

    aget v3, v1, v7

    .line 52
    iput v3, v0, Landroid/graphics/Rect;->left:I

    aget v3, v1, v2

    .line 53
    iput v3, v0, Landroid/graphics/Rect;->top:I

    aget v3, v1, v7

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    aget v1, v1, v2

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :cond_12
    aget v3, v1, v7

    .line 56
    iput v3, v0, Landroid/graphics/Rect;->left:I

    aget v3, v1, v2

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    aget v3, v1, v7

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v3, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    aget p1, v1, v2

    .line 59
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :cond_13
    aget v3, v1, v7

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    aget v3, v1, v2

    .line 61
    iput v3, v0, Landroid/graphics/Rect;->top:I

    aget v3, v1, v7

    .line 62
    iput v3, v0, Landroid/graphics/Rect;->right:I

    aget v1, v1, v2

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 64
    :goto_8
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mButtonActionManager:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;

    invoke-virtual {p0, p2, v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result p0

    return p0

    .line 65
    :cond_14
    sget-object p1, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->STOPPING:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonState:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->hideQuickTakePressEffect()V

    .line 67
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onRecordStopButtonClick()Z

    move-result p0

    return p0
.end method

.method public onUpAfterSwipeLeft()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onFloatingShutterButtonUp()V

    return-void
.end method

.method public onUpAfterSwipeUp()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onFloatingShutterButtonUp()V

    return-void
.end method

.method public refreshButton(Lcom/sec/android/app/camera/interfaces/CommandId;Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Landroid/util/Pair<",
            "Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshButton : commandId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CenterButtonView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getResourceId()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->setCapturingResourceType(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->setResourceId(I)V

    .line 5
    sget-object p2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$9;->$SwitchMap$com$sec$android$app$camera$interfaces$KeyScreenLayerManager$CenterButtonCapturingResourceType:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getCapturingResourceType()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->resetCenterButtonScale()V

    .line 7
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->getCommandIdForAvd(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p2

    .line 8
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCurrentAnimationCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    if-eq v2, p2, :cond_2

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterImageAnimationResourceIdMap:Ljava/util/HashMap;

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->getCommandIdForAvd(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCurrentAnimationCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 11
    sget-object p2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    if-ne p1, p2, :cond_1

    :cond_0
    move v3, v1

    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsSingleTakeMode:Z

    .line 12
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->setBorderStrokeImageVisibility(Z)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getResourceId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->checkPhotoTimerCenterButtonAnimation(II)I

    move-result v0

    .line 15
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getResourceId()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->changeCenterButtonImage(II)V

    return-void

    .line 16
    :cond_4
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->CAPTURING:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-eq p1, p2, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->PAUSING:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-eq p1, p2, :cond_5

    .line 17
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->setBorderStrokeImageVisibility(Z)V

    :cond_5
    return-void
.end method

.method public requestCenterButtonFocus()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getCapturingResourceType()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->PAUSE_STOP:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    .line 2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->CAPTURING:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->n:Landroid/widget/ImageButton;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->semRequestAccessibilityFocus()Z

    return-void
.end method

.method public resetCenterButtonAction()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mButtonActionManager:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->resetCenterButtonAction()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonState:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->PREPARING:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->resetCenterButtonScale()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->a:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public resetCenterButtonScale()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mScaleXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mScaleYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public resetCenterButtonYAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->resetView()V

    :cond_0
    return-void
.end method

.method public resetView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mShutterColorAnimation:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/l;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/l;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/i;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/i;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->resetCenterButtonScale()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public setBurstShotButtonState(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$BurstShotButtonState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mBurstShotButtonState:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$BurstShotButtonState;

    return-void
.end method

.method public setCapturingProgress(I)V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->a:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->k:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public setKeyScreenLayerOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mButtonActionManager:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->setKeyScreenOrientation(I)V

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mKeyScreenLayerOrientation:I

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->setPresenter(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    return-void
.end method

.method public setQuickTakeButtonState(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonState:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    return-void
.end method

.method public setQuickTakeButtonTouchPositionUpdateListener(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonTouchPositionChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonTouchListener:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonTouchPositionChangeListener;

    return-void
.end method

.method public setRecordingMode(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mIsRecordingMode:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f1204d3

    goto :goto_0

    :cond_0
    const p1, 0x7f1205af

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->setContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method public showBurstShotCountNumber(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p1, p1, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v1, 0x7f07004a

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_1

    .line 6
    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->CENTER_BUTTON_SIZE:F

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p1, p1, Lo5/s;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 9
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v3

    iget-object v5, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v5, v5, Lo5/s;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v1, v5

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->CENTER_BUTTON_SIZE:F

    mul-float/2addr v0, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v1, v1, Lo5/s;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    sub-float v2, v0, v1

    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    return-void
.end method

.method public showQuickTakePressEffect()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mShutterColorAnimation:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f06001a

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 5
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mShutterColorAnimation:Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mShutterColorAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mShutterColorAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/c;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mShutterColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0b001f

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v7, v1

    invoke-virtual {v0, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 15
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b001e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public updateButtonState(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;IZ)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->getCapturingResourceType()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonInfo;->setState(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateButton : state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", buttonResourceType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CenterButtonView"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v3, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView$9;->$SwitchMap$com$sec$android$app$camera$interfaces$KeyScreenLayerManager$CenterButtonCapturingResourceType:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return v1

    .line 7
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->updateQuickTakeStopResource(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    return v1

    .line 8
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->updateCustomResource(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    return v1

    .line 9
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->updateStopResource(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    return v1

    .line 10
    :pswitch_3
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->updatePauseStopResource(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;IZ)Z

    move-result p0

    return p0

    .line 11
    :pswitch_4
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->updateQuickTakePauseStopResource(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;IZ)Z

    move-result p0

    return p0

    .line 12
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->updateQuickTakeResource(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateCenterButtonResizableMode()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v1, v1, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    const v1, 0x7f080466

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v1, v1, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f080468

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 16
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v1, v1, Lo5/s;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->b:Landroid/widget/ImageView;

    const v1, 0x7f080467

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 18
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public updatePauseStopAreaParams()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v1, v1, Lo5/s;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v2, v2, Lo5/s;->d:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v3, v3, Lo5/s;->k:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 5
    iget-object v4, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v4, v4, Lo5/s;->l:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 6
    iget-object v5, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v5, v5, Lo5/s;->n:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 7
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v6, v6, Lo5/s;->o:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v7, 0x0

    .line 8
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070048

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 10
    iput v7, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 11
    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v8, -0x1

    .line 12
    iput v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v10, 0x1

    .line 13
    iput v10, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 14
    iget-object v10, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v10, v10, Lo5/s;->k:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0806b3

    invoke-virtual {v11, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 16
    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 17
    iput v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 18
    iget-object v10, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v10, v10, Lo5/s;->d:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    iput v10, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 19
    iput v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 20
    iput v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 21
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 22
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 23
    div-int/lit8 v10, v0, 0x2

    invoke-virtual {v4, v10, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 24
    iput v7, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 25
    iget-object v11, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v11, v11, Lo5/s;->d:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    iput v11, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 26
    iput v7, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 27
    iput v7, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 28
    iput v8, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 29
    iget-object v11, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v11, v11, Lo5/s;->n:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0806b5

    invoke-virtual {v12, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 31
    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 32
    iput v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 33
    iput v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 34
    iget-object v9, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v9, v9, Lo5/s;->d:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    iput v9, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 35
    iput v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 36
    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 37
    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 38
    invoke-virtual {v6, v7, v7, v10, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 39
    iput v8, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 40
    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 41
    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->d:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 43
    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->d:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object v0, v0, Lo5/s;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lo5/s;

    iget-object p0, p0, Lo5/s;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

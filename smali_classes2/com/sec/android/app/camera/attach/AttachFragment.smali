.class public Lcom/sec/android/app/camera/attach/AttachFragment;
.super Landroidx/fragment/app/Fragment;
.source "AttachFragment.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;


# static fields
.field private static final TAG:Ljava/lang/String; = "AttachFragment"


# instance fields
.field mAspectRatio:Lcom/sec/android/app/camera/interfaces/AspectRatio;

.field private mAttachController:Lcom/sec/android/app/camera/attach/AbstractAttachController;

.field private mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mIsKeyHandled:Z

.field private mViewBinding:Lo5/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-void
.end method

.method public static synthetic d(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/attach/AttachFragment;->lambda$onCreateView$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/attach/AttachFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/attach/AttachFragment;->lambda$startButtonGroupShowAnimation$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/attach/AttachFragment;Lcom/sec/android/app/camera/interfaces/AttachModeManager$AttachType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/attach/AttachFragment;->lambda$onViewCreated$4(Lcom/sec/android/app/camera/interfaces/AttachModeManager$AttachType;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/attach/AttachFragment;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/attach/AttachFragment;->lambda$startImageViewToCenterAnimation$6(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/attach/AttachFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/attach/AttachFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/attach/AttachFragment;Lcom/sec/android/app/camera/interfaces/AttachModeManager$AttachType;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/attach/AttachFragment;->lambda$onResume$3(Lcom/sec/android/app/camera/interfaces/AttachModeManager$AttachType;)Z

    move-result p0

    return p0
.end method

.method private isValidUri()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/attach/AttachViewModel;->getAttachType()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AttachFragment"

    if-nez v0, :cond_0

    const-string p0, "Attach type is null, it seems Camera was killed"

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/attach/AttachViewModel;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/attach/AttachViewModel;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/attach/AttachViewModel;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_3
    :goto_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/attach/AttachViewModel;->getContentUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return v1

    :goto_1
    if-eqz v0, :cond_5

    .line 10
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p0

    :cond_6
    :goto_3
    return v3
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/attach/AttachFragment;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/attach/AttachFragment;->lambda$onCreateView$0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic k(Lcom/sec/android/app/camera/attach/AttachFragment;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/sec/android/app/camera/attach/AttachFragment;ILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/attach/AttachFragment;->startImageViewToCenterAnimation(ILandroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a038d

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/logging/SaLogEventId;->ATTACH_CAMERA_RETRY:Lcom/sec/android/app/camera/logging/SaLogEventId;

    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachFragment;->processBack()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachFragment;->onOkay()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.video"

    const-string v1, "com.samsung.android.video.player.activity.MoviePlayer"

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/attach/AttachViewModel;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/attach/AttachViewModel;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/attach/AttachViewModel;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "video/*"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "AttachFragment"

    const-string v0, "VideoPlayer was disabled!!"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f120186

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$onCreateView$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onResume$3(Lcom/sec/android/app/camera/interfaces/AttachModeManager$AttachType;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/attach/AttachViewModel;->getAttachType()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onViewCreated$4(Lcom/sec/android/app/camera/interfaces/AttachModeManager$AttachType;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {v0, v1}, Lo5/e;->f(Lcom/sec/android/app/camera/attach/AttachViewModel;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/attach/AttachControllerFactory;->create(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/attach/AttachViewModel;Lcom/sec/android/app/camera/interfaces/AttachModeManager$AttachType;)Lcom/sec/android/app/camera/attach/AbstractAttachController;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAttachController:Lcom/sec/android/app/camera/attach/AbstractAttachController;

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachFragment;->isValidUri()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachFragment;->updateImage()V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/attach/AttachFragment;->updateLayout(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0a02fa

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->semRequestAccessibilityFocus()Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachFragment;->processBack()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$startButtonGroupShowAnimation$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object p0, p0, Lo5/e;->b:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$startImageViewToCenterAnimation$6(ILandroid/animation/ValueAnimator;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object p0, p0, Lo5/e;->d:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object p0, p0, Lo5/e;->d:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    :goto_1
    return-void
.end method

.method private onOkay()V
    .locals 2

    const-string v0, "AttachFragment"

    const-string v1, "onOkay"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAttachController:Lcom/sec/android/app/camera/attach/AbstractAttachController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/attach/AbstractAttachController;->setActivityResult()V

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventId;->ATTACH_CAMERA_OK:Lcom/sec/android/app/camera/logging/SaLogEventId;

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private processBack()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AttachFragment"

    const-string v0, "fragment already detached. return"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAttachController:Lcom/sec/android/app/camera/attach/AbstractAttachController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/attach/AbstractAttachController;->handleBackKey()V

    return-void
.end method

.method private startButtonGroupShowAnimation()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v1, Lu4/d;

    invoke-direct {v1}, Lu4/d;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v1, Lcom/sec/android/app/camera/attach/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/attach/a;-><init>(Lcom/sec/android/app/camera/attach/AttachFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startImageViewToCenterAnimation(ILandroid/graphics/Rect;)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float p2, p2

    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object v1, v1, Lo5/e;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPivotX()F

    move-result v1

    sub-float/2addr p2, v1

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object v1, v1, Lo5/e;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    sub-int/2addr v1, p2

    int-to-float p2, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object v1, v1, Lo5/e;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPivotX()F

    move-result v1

    sub-float/2addr p2, v1

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object v1, v1, Lo5/e;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float p2, p2

    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object v1, v1, Lo5/e;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPivotY()F

    move-result v1

    sub-float/2addr p2, v1

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object v1, v1, Lo5/e;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setTranslationY(F)V

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x0

    aput p2, v1, v0

    .line 7
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 8
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, p2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0b000a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    new-instance p2, Lcom/sec/android/app/camera/attach/b;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/camera/attach/b;-><init>(Lcom/sec/android/app/camera/attach/AttachFragment;I)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateBottomGroupLayout(I)V
    .locals 5

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAspectRatio:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_1x1:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070032

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070033

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 4
    :goto_2
    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v1, v3

    .line 5
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object v2, v2, Lo5/e;->b:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v4, 0x1

    if-ne p1, v4, :cond_6

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, -0x1

    .line 7
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_3

    .line 8
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f070034

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 9
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 10
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_4

    .line 11
    :cond_7
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 12
    :goto_4
    iget-object p1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object p1, p1, Lo5/e;->b:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object p1, p1, Lo5/e;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 15
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object p0, p0, Lo5/e;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateImage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAttachController:Lcom/sec/android/app/camera/attach/AbstractAttachController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/attach/AbstractAttachController;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "AttachFragment"

    const-string v1, "returning because thumbnailBitmap is null"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/interfaces/AspectRatio;->getAspectRatio(II)Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAspectRatio:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object v1, v1, Lo5/e;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object v0, v0, Lo5/e;->d:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object v0, v0, Lo5/e;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 8
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object v0, v0, Lo5/e;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/camera/attach/AttachFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/attach/AttachFragment$1;-><init>(Lcom/sec/android/app/camera/attach/AttachFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 10
    :cond_1
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogScreenId;->ATTACH_REVIEW:Lcom/sec/android/app/camera/logging/SaLogScreenId;

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->setSaScreenId(Lcom/sec/android/app/camera/logging/SaLogScreenId;)V

    return-void
.end method

.method private updateLayout(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/attach/AttachFragment;->updateBottomGroupLayout(I)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AttachFragment"

    const-string v1, "onAttach"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 3
    check-cast p1, Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachFragment;->processBack()V

    const/4 p0, 0x1

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/attach/AttachFragment;->updateLayout(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "AttachFragment"

    const-string v1, "onCreate"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "AttachFragment"

    const-string v0, "onCreateView"

    .line 1
    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    .line 2
    invoke-static {p1, p2, p3}, Lo5/e;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/e;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isHighlightButtonsOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object p1, p1, Lo5/e;->b:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object p2, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060050

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/navigation/e;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object p1, p1, Lo5/e;->b:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance p2, Lcom/sec/android/app/camera/attach/f;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/attach/f;-><init>(Lcom/sec/android/app/camera/attach/AttachFragment;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/navigation/e;->setOnItemSelectedListener(Lcom/google/android/material/navigation/e$c;)V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachFragment;->startButtonGroupShowAnimation()V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object p1, p1, Lo5/e;->f:Landroid/widget/ImageView;

    new-instance p2, Lcom/sec/android/app/camera/attach/c;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/attach/c;-><init>(Lcom/sec/android/app/camera/attach/AttachFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isDexMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object p1, p1, Lo5/e;->c:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->setRotateAction(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object p1, p1, Lo5/e;->c:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    sget-object p2, Lcom/sec/android/app/camera/attach/d;->a:Lcom/sec/android/app/camera/attach/d;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object p0, p0, Lo5/e;->c:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    return-object p0
.end method

.method public onDetach()V
    .locals 2

    const-string v0, "AttachFragment"

    const-string v1, "onDetach"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mIsKeyHandled:Z

    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string p2, "AttachFragment"

    const-string v0, "onKeyDown"

    .line 1
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/16 p2, 0x17

    if-eq p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mIsKeyHandled:Z

    return p1
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string p2, "AttachFragment"

    const-string v0, "onKeyUp"

    .line 1
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean p2, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mIsKeyHandled:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 3
    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mIsKeyHandled:Z

    const/4 p2, 0x4

    const/4 v1, 0x1

    if-eq p1, p2, :cond_3

    const/16 p2, 0x17

    if-eq p1, p2, :cond_1

    return v0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    :cond_2
    return v1

    .line 6
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachFragment;->processBack()V

    return v1
.end method

.method public onPause()V
    .locals 3

    const-string v0, "AttachFragment"

    const-string v1, "onPause"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object v0, v0, Lo5/e;->c:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->setRotateAction(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/LayerManager;->setImportantForAccessibility(I)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v0

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->showView(I)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->setPreviousPreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v0, "AttachFragment"

    const-string v1, "onResume"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 3
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/AttachModeManager$AttachType;->values()[Lcom/sec/android/app/camera/interfaces/AttachModeManager$AttachType;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/attach/g;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/attach/g;-><init>(Lcom/sec/android/app/camera/attach/AttachFragment;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "finish when attach view model data lost."

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->setImportantForAccessibility(I)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mViewBinding:Lo5/e;

    iget-object v0, v0, Lo5/e;->c:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->setRotateAction(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;)V

    .line 9
    :cond_2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/attach/AttachFragment;->updateLayout(I)V

    .line 11
    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->hideView(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p2, Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/attach/AttachViewModel;

    iput-object p1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    .line 3
    invoke-virtual {p1}, Lcom/sec/android/app/camera/attach/AttachViewModel;->getAttachType()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/camera/attach/e;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/attach/e;-><init>(Lcom/sec/android/app/camera/attach/AttachFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachFragment;->isValidUri()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachFragment;->processBack()V

    :cond_0
    return-void
.end method

.method public prepareRotation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public refreshLayout(Z)V
    .locals 0

    return-void
.end method

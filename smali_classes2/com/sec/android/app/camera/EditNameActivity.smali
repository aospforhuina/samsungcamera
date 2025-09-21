.class public Lcom/sec/android/app/camera/EditNameActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "EditNameActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;
    }
.end annotation


# static fields
.field private static final FILTER_NAME_MAX_LENGTH:I = 0x9

.field private static final TAG:Ljava/lang/String; = "EditNameActivity"


# instance fields
.field private mCropRect:Landroid/graphics/Rect;

.field private mImagePath:Ljava/lang/String;

.field private mIsSecureCamera:Z

.field private mName:Ljava/lang/String;

.field private mViewBinding:Lo5/u1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/EditNameActivity;FFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/camera/EditNameActivity;->lambda$startEditNameViewUpAnimation$2(FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/EditNameActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/EditNameActivity;->lambda$initLayout$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/EditNameActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/EditNameActivity;->lambda$initLayout$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/EditNameActivity;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/EditNameActivity;->startEditNameViewUpAnimation(Landroid/graphics/Rect;)V

    return-void
.end method

.method private handleShowWhenLockedState(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "isSecure"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mIsSecureCamera:Z

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    return-void
.end method

.method private initCropInfo(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "cropCoordinate"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mCropRect:Landroid/graphics/Rect;

    const-string v0, "imagePath"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mImagePath:Ljava/lang/String;

    return-void
.end method

.method private initEditName(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mName:Ljava/lang/String;

    return-void
.end method

.method private initLayout(Landroid/content/Intent;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v3, v2, Lo5/u1;->k:Landroid/widget/TextView;

    iget-object v4, v2, Lo5/u1;->f:Landroid/widget/Button;

    iget-object v2, v2, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;-><init>(ILandroid/widget/TextView;Landroid/widget/Button;Landroid/widget/EditText;)V

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v1, v1, Lo5/u1;->c:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/camera/EditNameActivity;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v1, v1, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v1, v1, Lo5/u1;->c:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const-string v0, "name_view_coordinate"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v0, v0, Lo5/u1;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/camera/EditNameActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/EditNameActivity$1;-><init>(Lcom/sec/android/app/camera/EditNameActivity;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object p1, p1, Lo5/u1;->a:Landroid/widget/Button;

    new-instance v0, Lcom/sec/android/app/camera/e2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/e2;-><init>(Lcom/sec/android/app/camera/EditNameActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object p1, p1, Lo5/u1;->f:Landroid/widget/Button;

    new-instance v0, Lcom/sec/android/app/camera/f2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/f2;-><init>(Lcom/sec/android/app/camera/EditNameActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$initLayout$0(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v0, v0, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v1, v1, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v2, v2, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v3, v3, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(IIII)Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "name_view_coordinate"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p0, "3024"

    .line 4
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initLayout$1(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object p1, p1, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/filter/FilterStorage;->isSameFilterNameExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object p1, p1, Lo5/u1;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f12023a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object p1, p1, Lo5/u1;->c:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v0, v0, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mCropRect:Landroid/graphics/Rect;

    const-string v1, "cropCoordinate"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mImagePath:Ljava/lang/String;

    const-string v1, "imagePath"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v0, v0, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v1, v1, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v2, v2, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v3, v3, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(IIII)Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "name_view_coordinate"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    const-string p0, "3027"

    .line 11
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$startEditNameViewUpAnimation$2(FFFFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v0, v0, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object p1, p1, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTranslationY(F)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object p1, p1, Lo5/u1;->c:Landroid/widget/EditText;

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr p3, v0

    add-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setScaleX(F)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object p0, p0, Lo5/u1;->c:Landroid/widget/EditText;

    sub-float/2addr p4, p2

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p4, p1

    add-float/2addr p4, p2

    invoke-virtual {p0, p4}, Landroid/widget/EditText;->setScaleY(F)V

    return-void
.end method

.method private setupWindowAttributes()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    const/4 v1, 0x1

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private startEditNameViewUpAnimation(Landroid/graphics/Rect;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v1, v1, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v6, v0, v1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v1, v1, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v0, v0, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v1, v1, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v1, v1, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v3, v3, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v3, v3, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v0, v0, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTranslationY(F)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object p1, p1, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setScaleX(F)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object p1, p1, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setScaleY(F)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object p1, p1, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTranslationX()F

    move-result v4

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object p1, p1, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTranslationY()F

    move-result v5

    new-array p1, v2, [F

    .line 11
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 12
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14
    new-instance v0, Lcom/sec/android/app/camera/d2;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/d2;-><init>(Lcom/sec/android/app/camera/EditNameActivity;FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "EditNameActivity"

    const-string v0, "onCreate : edit name does not support on multi window environments."

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/EditNameActivity;->setupWindowAttributes()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lo5/u1;->d(Landroid/view/LayoutInflater;)Lo5/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    .line 8
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/EditNameActivity;->initCropInfo(Landroid/content/Intent;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/EditNameActivity;->initEditName(Landroid/content/Intent;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/EditNameActivity;->handleShowWhenLockedState(Landroid/content/Intent;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/EditNameActivity;->initLayout(Landroid/content/Intent;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object p2, p2, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getLeft()I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v0, v0, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v1, v1, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v2, v2, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getBottom()I

    move-result v2

    invoke-static {p2, v0, v1, v2}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(IIII)Landroid/graphics/Rect;

    move-result-object p2

    const-string v0, "name_view_coordinate"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_0

    const-string p1, "EditNameActivity"

    const-string v0, "onMultiWindowModeChanged : edit name does not support on multi window environments."

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v0, v0, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v0, v0, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v1, v1, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v2, v2, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/TextUtil;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v0

    float-to-int v0, v0

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v1, v1, Lo5/u1;->c:Landroid/widget/EditText;

    div-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v0, v0, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v0, v0, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const-string v0, "input_method"

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v1, v1, Lo5/u1;->c:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object p0, p0, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mViewBinding:Lo5/u1;

    iget-object v1, v1, Lo5/u1;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mCropRect:Landroid/graphics/Rect;

    const-string v2, "cropCoordinate"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/EditNameActivity;->mImagePath:Ljava/lang/String;

    const-string v2, "imagePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-boolean p0, p0, Lcom/sec/android/app/camera/EditNameActivity;->mIsSecureCamera:Z

    const-string v1, "isSecure"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "savedIntent"

    .line 7
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

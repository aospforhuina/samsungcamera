.class Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;
.super Ljava/lang/Object;
.source "CreateMyFilterMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrengthFadeOutInRunnable"
.end annotation


# static fields
.field private static final FILTER_MIN_INTENSITY_LEVEL:I = 0x5

.field private static final MESSAGE_UPDATE_FILTER_STRENGTH_DELAY:J = 0x32L


# instance fields
.field private mAuxData:[B

.field private mFeaturesData:[F

.field private mIsFadeOut:Z

.field private mJsonData:Ljava/lang/String;

.field private mLutBitmap:Landroid/graphics/Bitmap;

.field private mStrengthLevel:I

.field final synthetic this$0:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->this$0:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mStrengthLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;Lcom/sec/android/app/camera/layer/menu/createmyfilter/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;-><init>(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;)V

    return-void
.end method

.method private onFadeOutFinished()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->this$0:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;->b(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;)Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mLutBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mJsonData:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mAuxData:[B

    iget-object v4, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mFeaturesData:[F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->setMyFilterData(Landroid/graphics/Bitmap;Ljava/lang/String;[B[F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->this$0:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;->g(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;)V

    return-void
.end method

.method private updateFilterStrengthFadeOut()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->this$0:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;

    iget v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mStrengthLevel:I

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;->h(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;I)V

    .line 2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mIsFadeOut:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mStrengthLevel:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mStrengthLevel:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 4
    iput v2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mStrengthLevel:I

    .line 5
    iput-boolean v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mIsFadeOut:Z

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->onFadeOutFinished()V

    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mStrengthLevel:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mStrengthLevel:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_1

    .line 8
    iput v3, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mStrengthLevel:I

    return v2

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->updateFilterStrengthFadeOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->this$0:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;->d(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->this$0:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;->e(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;)Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;

    move-result-object p0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->this$0:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;->access$200(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$View;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$View;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$View;->updateCreateMyFilterLayout(Landroid/graphics/Rect;Z)V

    :goto_0
    return-void
.end method

.method public setMyFilterData(Landroid/graphics/Bitmap;Ljava/lang/String;[B[F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mLutBitmap:Landroid/graphics/Bitmap;

    .line 2
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mJsonData:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mAuxData:[B

    .line 4
    iput-object p4, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mFeaturesData:[F

    return-void
.end method

.method public setStartFadeOut(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mIsFadeOut:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->this$0:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;->access$400(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->this$0:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;->c(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;)Ljava/util/EnumMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->this$0:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;

    invoke-static {v1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;->access$300(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFilterManager()Lcom/sec/android/app/camera/interfaces/FilterManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/FilterManager;->getFilterSettingKey()Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mStrengthLevel:I

    .line 3
    iget-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->mIsFadeOut:Z

    if-nez p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$StrengthFadeOutInRunnable;->onFadeOutFinished()V

    :cond_1
    return-void
.end method

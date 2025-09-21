.class Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LevelMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->startSuccessItemHideAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->i(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->i(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;Z)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->h(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;)Lo5/n4;

    move-result-object p1

    iget-object p1, p1, Lo5/n4;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->h(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;)Lo5/n4;

    move-result-object p0

    iget-object p0, p0, Lo5/n4;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

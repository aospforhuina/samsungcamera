.class Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AeAfGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;->startSubViewRotateAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;

    iput p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup$1;->val$progress:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;

    iget-boolean v0, p1, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->mIsRotateAnimationRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;->getAeAfSubViewGroup()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;->getAeAfSubViewGroup()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->EV_SLIDER:Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;->b(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;->getEvSlider()Landroid/widget/SeekBar;

    move-result-object p1

    iget v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup$1;->val$progress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->updateEvSliderPosition()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->TEXT:Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;->b(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;->getAeAfText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->updateAeAfTextPosition()V

    .line 10
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->mIsRotateAnimationRunning:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->mIsRotateAnimationRunning:Z

    return-void
.end method

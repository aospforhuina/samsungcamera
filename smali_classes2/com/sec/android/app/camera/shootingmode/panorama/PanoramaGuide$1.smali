.class Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide$1;
.super Ljava/lang/Object;
.source "PanoramaGuide.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide;->updateOrientation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide$1;->this$0:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide$1;->this$0:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide$1;->this$0:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide;->a(Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide;)Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide$PanoramaGuideDirection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide$1;->this$0:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide;

    sget-object p1, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide$PanoramaGuideAnimationType;->CAPTURE_TO_PREVIEW:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide$PanoramaGuideAnimationType;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide;->d(Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide;Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaGuide$PanoramaGuideAnimationType;)V

    :cond_0
    return-void
.end method

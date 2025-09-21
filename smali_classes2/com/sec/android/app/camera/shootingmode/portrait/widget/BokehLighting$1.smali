.class Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "BokehLighting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->setSeekBarAccessibilityDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$1;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$1;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->f(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$1;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->startSeekBarHideTimer()V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

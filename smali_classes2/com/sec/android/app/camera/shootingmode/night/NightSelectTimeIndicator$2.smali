.class Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "NightSelectTimeIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$2;->this$0:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

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
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$2;->this$0:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->o(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$SelectTimeButtonEventListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$SelectTimeButtonEventListener;->onButtonAccessibilityFocused(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$2;->this$0:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->o(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$SelectTimeButtonEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$SelectTimeButtonEventListener;->onButtonAccessibilityFocused(Z)V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

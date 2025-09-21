.class Lcom/sec/android/app/camera/shootingmode/night/NightView$1;
.super Ljava/lang/Object;
.source "NightView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/night/NightView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/night/NightView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/night/NightView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/night/NightView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/night/NightView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->o(Lcom/sec/android/app/camera/shootingmode/night/NightView;)Lo5/o5;

    move-result-object p1

    iget-object p1, p1, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/night/NightView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->o(Lcom/sec/android/app/camera/shootingmode/night/NightView;)Lo5/o5;

    move-result-object p1

    iget-object p1, p1, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->isButtonExpanded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/night/NightView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->o(Lcom/sec/android/app/camera/shootingmode/night/NightView;)Lo5/o5;

    move-result-object p0

    iget-object p0, p0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->hideSelectTimeButton()V

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

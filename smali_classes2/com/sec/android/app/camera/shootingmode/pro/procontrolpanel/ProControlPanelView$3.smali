.class Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$3;
.super Ljava/lang/Object;
.source "ProControlPanelView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->initButtonBackground(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->i(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->updateButtonBackground(I)V

    return-void
.end method

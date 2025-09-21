.class Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan$1;
.super Ljava/lang/Object;
.source "SmartScan.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->updateOrientation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan$1;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan$1;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan$1;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->f(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->g(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;I)V

    return-void
.end method

.class Lcom/sec/android/app/camera/shootingmode/more/MoreView$GridAreaDragEventListener;
.super Ljava/lang/Object;
.source "MoreView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/more/MoreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridAreaDragEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/more/MoreView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView$GridAreaDragEventListener;->this$0:Lcom/sec/android/app/camera/shootingmode/more/MoreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Lcom/sec/android/app/camera/shootingmode/more/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView$GridAreaDragEventListener;-><init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView$GridAreaDragEventListener;->this$0:Lcom/sec/android/app/camera/shootingmode/more/MoreView;

    invoke-static {p0, p2}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->y(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Landroid/view/DragEvent;)V

    :cond_1
    return v0
.end method

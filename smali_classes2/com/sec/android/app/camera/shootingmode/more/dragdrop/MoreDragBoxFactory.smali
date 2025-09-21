.class public Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBoxFactory;
.super Ljava/lang/Object;
.source "MoreDragBoxFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeMoreDragBox(Landroid/content/Context;I)Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MorePortraitDragBox;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MorePortraitDragBox;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    const/16 v0, -0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    .line 3
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MorePortraitDragBox;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MorePortraitDragBox;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreLandscapeDragBox;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreLandscapeDragBox;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 5
    :cond_2
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreReverseLandscapeDragBox;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreReverseLandscapeDragBox;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

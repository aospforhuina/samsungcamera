.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/g;->a:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/g;->a:Z

    check-cast p1, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/ZoomShortcutListAdapter;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/ZoomShortcutListView;->a(ZLcom/sec/android/app/camera/layer/keyscreen/zoom/widget/ZoomShortcutListAdapter;)V

    return-void
.end method

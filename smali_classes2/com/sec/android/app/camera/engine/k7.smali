.class public final synthetic Lcom/sec/android/app/camera/engine/k7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/k7;->a:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/k7;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/k7;->a:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/k7;->b:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->r(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Ljava/util/ArrayList;)V

    return-void
.end method

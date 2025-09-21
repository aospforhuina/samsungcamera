.class public final synthetic Lcom/sec/android/app/camera/watch/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

.field public final synthetic b:Ljava/util/Optional;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Ljava/util/Optional;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/watch/x;->a:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    iput-object p2, p0, Lcom/sec/android/app/camera/watch/x;->b:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/x;->a:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/x;->b:Ljava/util/Optional;

    check-cast p1, Landroid/graphics/Matrix;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->d(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Ljava/util/Optional;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

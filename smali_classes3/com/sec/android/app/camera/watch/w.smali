.class public final synthetic Lcom/sec/android/app/camera/watch/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/watch/w;->a:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    iput p2, p0, Lcom/sec/android/app/camera/watch/w;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/w;->a:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    iget p0, p0, Lcom/sec/android/app/camera/watch/w;->b:I

    check-cast p1, Ljava/lang/Float;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->e(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;ILjava/lang/Float;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

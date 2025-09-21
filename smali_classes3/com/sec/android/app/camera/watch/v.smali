.class public final synthetic Lcom/sec/android/app/camera/watch/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/watch/v;->a:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/v;->a:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->h(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Landroid/graphics/Bitmap;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

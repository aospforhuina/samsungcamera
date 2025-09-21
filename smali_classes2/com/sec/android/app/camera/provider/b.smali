.class public final synthetic Lcom/sec/android/app/camera/provider/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/provider/AppUpdateCheckManager;

.field public final synthetic b:Ljava/util/Collection;

.field public final synthetic c:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/provider/AppUpdateCheckManager;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/b;->a:Lcom/sec/android/app/camera/provider/AppUpdateCheckManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/provider/b;->b:Ljava/util/Collection;

    iput-object p3, p0, Lcom/sec/android/app/camera/provider/b;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/b;->a:Lcom/sec/android/app/camera/provider/AppUpdateCheckManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/provider/b;->b:Ljava/util/Collection;

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/b;->c:Ljava/util/Collection;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/camera/provider/AppUpdateCheckManager;->a(Lcom/sec/android/app/camera/provider/AppUpdateCheckManager;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.class public final synthetic Lcom/sec/android/app/camera/util/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/util/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/camera/util/b;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/b;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/camera/util/b;->b:Landroid/content/Intent;

    check-cast p1, Landroid/os/Handler;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->e(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V

    return-void
.end method

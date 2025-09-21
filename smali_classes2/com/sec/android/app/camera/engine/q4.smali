.class public final synthetic Lcom/sec/android/app/camera/engine/q4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/CommonEngine;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/q4;->a:Lcom/sec/android/app/camera/engine/CommonEngine;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/engine/q4;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/q4;->a:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/q4;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->a(Lcom/sec/android/app/camera/engine/CommonEngine;Z)V

    return-void
.end method

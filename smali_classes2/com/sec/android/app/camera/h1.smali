.class public final synthetic Lcom/sec/android/app/camera/h1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/CommandReceiver;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/CommandReceiver;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/h1;->a:Lcom/sec/android/app/camera/CommandReceiver;

    iput p2, p0, Lcom/sec/android/app/camera/h1;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/h1;->a:Lcom/sec/android/app/camera/CommandReceiver;

    iget p0, p0, Lcom/sec/android/app/camera/h1;->b:I

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/CommandReceiver;->j(Lcom/sec/android/app/camera/CommandReceiver;I)V

    return-void
.end method

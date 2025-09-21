.class public final synthetic Lh/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/o;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lh/o;->b:Landroid/content/Context;

    iput p3, p0, Lh/o;->c:I

    iput-object p4, p0, Lh/o;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lh/o;->a:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lh/o;->b:Landroid/content/Context;

    iget v2, p0, Lh/o;->c:I

    iget-object p0, p0, Lh/o;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lh/p;->c(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)Lh/v;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lh/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lh/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lh/l;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lh/l;->a:Landroid/content/Context;

    iget-object v1, p0, Lh/l;->b:Ljava/lang/String;

    iget-object p0, p0, Lh/l;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lh/p;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lh/v;

    move-result-object p0

    return-object p0
.end method

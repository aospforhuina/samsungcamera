.class public final synthetic Lh/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/io/InputStream;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/n;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lh/n;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lh/n;->a:Ljava/io/InputStream;

    iget-object p0, p0, Lh/n;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lh/p;->f(Ljava/io/InputStream;Ljava/lang/String;)Lh/v;

    move-result-object p0

    return-object p0
.end method

.class La0/z$a;
.super Ljava/lang/Object;
.source "SourceGenerator.java"

# interfaces
.implements Ly/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La0/z;->i(Le0/n$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ly/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Le0/n$a;

.field final synthetic b:La0/z;


# direct methods
.method constructor <init>(La0/z;Le0/n$a;)V
    .locals 0

    iput-object p1, p0, La0/z$a;->b:La0/z;

    iput-object p2, p0, La0/z$a;->a:Le0/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, La0/z$a;->b:La0/z;

    iget-object v1, p0, La0/z$a;->a:Le0/n$a;

    invoke-virtual {v0, v1}, La0/z;->e(Le0/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, La0/z$a;->b:La0/z;

    iget-object p0, p0, La0/z$a;->a:Le0/n$a;

    invoke-virtual {v0, p0, p1}, La0/z;->g(Le0/n$a;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, La0/z$a;->b:La0/z;

    iget-object v1, p0, La0/z$a;->a:Le0/n$a;

    invoke-virtual {v0, v1}, La0/z;->e(Le0/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, La0/z$a;->b:La0/z;

    iget-object p0, p0, La0/z$a;->a:Le0/n$a;

    invoke-virtual {v0, p0, p1}, La0/z;->f(Le0/n$a;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

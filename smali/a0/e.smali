.class La0/e;
.super Ljava/lang/Object;
.source "DataCacheWriter.java"

# interfaces
.implements Lc0/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc0/a$b;"
    }
.end annotation


# instance fields
.field private final a:Lx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx/d<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final c:Lx/i;


# direct methods
.method constructor <init>(Lx/d;Ljava/lang/Object;Lx/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx/d<",
            "TDataType;>;TDataType;",
            "Lx/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La0/e;->a:Lx/d;

    .line 3
    iput-object p2, p0, La0/e;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, La0/e;->c:Lx/i;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 2

    iget-object v0, p0, La0/e;->a:Lx/d;

    iget-object v1, p0, La0/e;->b:Ljava/lang/Object;

    iget-object p0, p0, La0/e;->c:Lx/i;

    invoke-interface {v0, v1, p1, p0}, Lx/d;->b(Ljava/lang/Object;Ljava/io/File;Lx/i;)Z

    move-result p0

    return p0
.end method

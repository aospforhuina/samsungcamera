.class Ld5/b$a;
.super Lb6/a;
.source "DLSLogSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld5/b;->a(Ljava/util/Map;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ld5/b;


# direct methods
.method constructor <init>(Ld5/b;I)V
    .locals 0

    iput-object p1, p0, Ld5/b$a;->b:Ld5/b;

    iput p2, p0, Ld5/b$a;->a:I

    invoke-direct {p0}, Lb6/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ld5/b$a;->b:Ld5/b;

    invoke-static {p1}, Ld5/b;->f(Ld5/b;)Lf5/a;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-object p2, Lc5/c;->b:Lc5/c;

    invoke-virtual {p2}, Lc5/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lc5/c;->c:Lc5/c;

    :goto_0
    invoke-virtual {p1, v0, v1, p3, p2}, Lf5/a;->g(JLjava/lang/String;Lc5/c;)V

    .line 2
    iget-object p1, p0, Ld5/b$a;->b:Ld5/b;

    invoke-static {p1}, Ld5/b;->g(Ld5/b;)Landroid/content/Context;

    move-result-object p1

    iget p0, p0, Ld5/b$a;->a:I

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    mul-int/lit8 p2, p2, -0x1

    invoke-static {p1, p0, p2}, Lz4/b;->n(Landroid/content/Context;II)V

    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

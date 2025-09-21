.class public Lf0/a;
.super Ljava/lang/Object;
.source "HttpGlideUrlLoader.java"

# interfaces
.implements Le0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le0/n<",
        "Le0/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Le0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0/m<",
            "Le0/g;",
            "Le0/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v1, v0}, Lx/h;->f(Ljava/lang/String;Ljava/lang/Object;)Lx/h;

    move-result-object v0

    sput-object v0, Lf0/a;->b:Lx/h;

    return-void
.end method

.method public constructor <init>(Le0/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/m<",
            "Le0/g;",
            "Le0/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf0/a;->a:Le0/m;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Le0/g;

    invoke-virtual {p0, p1}, Lf0/a;->d(Le0/g;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;IILx/i;)Le0/n$a;
    .locals 0

    check-cast p1, Le0/g;

    invoke-virtual {p0, p1, p2, p3, p4}, Lf0/a;->c(Le0/g;IILx/i;)Le0/n$a;

    move-result-object p0

    return-object p0
.end method

.method public c(Le0/g;IILx/i;)Le0/n$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/g;",
            "II",
            "Lx/i;",
            ")",
            "Le0/n$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lf0/a;->a:Le0/m;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p2, p1, p3, p3}, Le0/m;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le0/g;

    if-nez p2, :cond_0

    .line 3
    iget-object p0, p0, Lf0/a;->a:Le0/m;

    invoke-virtual {p0, p1, p3, p3, p1}, Le0/m;->b(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 4
    :cond_1
    :goto_0
    sget-object p0, Lf0/a;->b:Lx/h;

    invoke-virtual {p4, p0}, Lx/i;->c(Lx/h;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 5
    new-instance p2, Le0/n$a;

    new-instance p3, Ly/j;

    invoke-direct {p3, p1, p0}, Ly/j;-><init>(Le0/g;I)V

    invoke-direct {p2, p1, p3}, Le0/n$a;-><init>(Lx/f;Ly/d;)V

    return-object p2
.end method

.method public d(Le0/g;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

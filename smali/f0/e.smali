.class public final Lf0/e;
.super Ljava/lang/Object;
.source "QMediaStoreUriLoader.java"

# interfaces
.implements Le0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/e$a;,
        Lf0/e$b;,
        Lf0/e$c;,
        Lf0/e$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le0/n<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Le0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0/n<",
            "Ljava/io/File;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final c:Le0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0/n<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Le0/n;Le0/n;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le0/n<",
            "Ljava/io/File;",
            "TDataT;>;",
            "Le0/n<",
            "Landroid/net/Uri;",
            "TDataT;>;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf0/e;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lf0/e;->b:Le0/n;

    .line 4
    iput-object p3, p0, Lf0/e;->c:Le0/n;

    .line 5
    iput-object p4, p0, Lf0/e;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lf0/e;->d(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;IILx/i;)Le0/n$a;
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lf0/e;->c(Landroid/net/Uri;IILx/i;)Le0/n$a;

    move-result-object p0

    return-object p0
.end method

.method public c(Landroid/net/Uri;IILx/i;)Le0/n$a;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lx/i;",
            ")",
            "Le0/n$a<",
            "TDataT;>;"
        }
    .end annotation

    move-object v0, p0

    new-instance v1, Le0/n$a;

    new-instance v2, Lt0/b;

    move-object v7, p1

    invoke-direct {v2, p1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    new-instance v12, Lf0/e$d;

    iget-object v4, v0, Lf0/e;->a:Landroid/content/Context;

    iget-object v5, v0, Lf0/e;->b:Le0/n;

    iget-object v6, v0, Lf0/e;->c:Le0/n;

    iget-object v11, v0, Lf0/e;->d:Ljava/lang/Class;

    move-object v3, v12

    move v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v11}, Lf0/e$d;-><init>(Landroid/content/Context;Le0/n;Le0/n;Landroid/net/Uri;IILx/i;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v12}, Le0/n$a;-><init>(Lx/f;Ly/d;)V

    return-object v1
.end method

.method public d(Landroid/net/Uri;)Z
    .locals 0

    invoke-static {p1}, Lz/b;->b(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

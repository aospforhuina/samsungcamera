.class public final Lg3/b;
.super Ljava/lang/Object;
.source "SearchImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg3/b$a;
    }
.end annotation


# static fields
.field public static final e:Lg3/b$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lc3/a;

.field private final c:Lc3/d;

.field private d:Lg3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg3/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg3/b$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lg3/b;->e:Lg3/b$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc3/a;Lc3/d;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentProviderCaller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemDatasource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg3/b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lg3/b;->b:Lc3/a;

    .line 4
    iput-object p3, p0, Lg3/b;->c:Lc3/d;

    .line 5
    new-instance p1, Lg3/b$b;

    invoke-direct {p1, p0}, Lg3/b$b;-><init>(Lg3/b;)V

    iput-object p1, p0, Lg3/b;->d:Lg3/a;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.class Lcom/sec/android/app/TraceWrapper$c;
.super Ljava/lang/Object;
.source "TraceWrapper.java"

# interfaces
.implements Lcom/sec/android/app/TraceWrapper$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/TraceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/TraceWrapper$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/TraceWrapper$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ll5/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Ll5/a;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Ll5/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-static {}, Ll5/a;->e()V

    return-void
.end method

.method public e(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Ll5/a;->d(Ljava/lang/String;I)V

    return-void
.end method

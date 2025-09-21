.class public final Lq2/e;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Ln2/x;


# instance fields
.field private final a:Lp2/c;


# direct methods
.method public constructor <init>(Lp2/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq2/e;->a:Lp2/c;

    return-void
.end method


# virtual methods
.method public a(Ln2/e;Lcom/google/gson/reflect/a;)Ln2/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln2/e;",
            "Lcom/google/gson/reflect/a<",
            "TT;>;)",
            "Ln2/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/gson/reflect/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Lo2/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lo2/b;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget-object v1, p0, Lq2/e;->a:Lp2/c;

    invoke-virtual {p0, v1, p1, p2, v0}, Lq2/e;->b(Lp2/c;Ln2/e;Lcom/google/gson/reflect/a;Lo2/b;)Ln2/w;

    move-result-object p0

    return-object p0
.end method

.method b(Lp2/c;Ln2/e;Lcom/google/gson/reflect/a;Lo2/b;)Ln2/w;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp2/c;",
            "Ln2/e;",
            "Lcom/google/gson/reflect/a<",
            "*>;",
            "Lo2/b;",
            ")",
            "Ln2/w<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Lo2/b;->value()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/google/gson/reflect/a;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/a;

    move-result-object p0

    invoke-virtual {p1, p0}, Lp2/c;->a(Lcom/google/gson/reflect/a;)Lp2/i;

    move-result-object p0

    invoke-interface {p0}, Lp2/i;->a()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of p1, p0, Ln2/w;

    if-eqz p1, :cond_0

    .line 3
    check-cast p0, Ln2/w;

    goto :goto_2

    .line 4
    :cond_0
    instance-of p1, p0, Ln2/x;

    if-eqz p1, :cond_1

    .line 5
    check-cast p0, Ln2/x;

    invoke-interface {p0, p2, p3}, Ln2/x;->a(Ln2/e;Lcom/google/gson/reflect/a;)Ln2/w;

    move-result-object p0

    goto :goto_2

    .line 6
    :cond_1
    instance-of p1, p0, Ln2/r;

    if-nez p1, :cond_3

    instance-of v0, p0, Ln2/j;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid attempt to bind an instance of "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as a @JsonAdapter for "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/gson/reflect/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 9
    move-object p1, p0

    check-cast p1, Ln2/r;

    move-object v2, p1

    goto :goto_1

    :cond_4
    move-object v2, v0

    .line 10
    :goto_1
    instance-of p1, p0, Ln2/j;

    if-eqz p1, :cond_5

    .line 11
    move-object v0, p0

    check-cast v0, Ln2/j;

    :cond_5
    move-object v3, v0

    .line 12
    new-instance p0, Lq2/l;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lq2/l;-><init>(Ln2/r;Ln2/j;Ln2/e;Lcom/google/gson/reflect/a;Ln2/x;)V

    :goto_2
    if-eqz p0, :cond_6

    .line 13
    invoke-interface {p4}, Lo2/b;->nullSafe()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 14
    invoke-virtual {p0}, Ln2/w;->a()Ln2/w;

    move-result-object p0

    :cond_6
    return-object p0
.end method

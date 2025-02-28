.class public abstract Lmf/javax/xml/datatype/XMLGregorianCalendar;
.super Ljava/lang/Object;
.source "XMLGregorianCalendar.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(Lmf/javax/xml/datatype/Duration;)V
.end method

.method public abstract clear()V
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    if-nez v1, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract getDay()I
.end method

.method public abstract getEon()Ljava/math/BigInteger;
.end method

.method public abstract getEonAndYear()Ljava/math/BigInteger;
.end method

.method public abstract getFractionalSecond()Ljava/math/BigDecimal;
.end method

.method public abstract getHour()I
.end method

.method public getMillisecond()I
    .locals 3

    .prologue
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v0

    .local v0, "fractionalSeconds":Ljava/math/BigDecimal;
    if-nez v0, :cond_0

    const/high16 v1, -0x80000000

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public abstract getMinute()I
.end method

.method public abstract getMonth()I
.end method

.method public abstract getSecond()I
.end method

.method public abstract getTimeZone(I)Ljava/util/TimeZone;
.end method

.method public abstract getTimezone()I
.end method

.method public abstract getXMLSchemaType()Lmf/javax/xml/namespace/QName;
.end method

.method public abstract getYear()I
.end method

.method public hashCode()I
    .locals 4

    .prologue
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v1

    .local v1, "timezone":I
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    move-object v0, p0

    .local v0, "gc":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->normalize()Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v2

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public abstract isValid()Z
.end method

.method public abstract normalize()Lmf/javax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract reset()V
.end method

.method public abstract setDay(I)V
.end method

.method public abstract setFractionalSecond(Ljava/math/BigDecimal;)V
.end method

.method public abstract setHour(I)V
.end method

.method public abstract setMillisecond(I)V
.end method

.method public abstract setMinute(I)V
.end method

.method public abstract setMonth(I)V
.end method

.method public abstract setSecond(I)V
.end method

.method public setTime(III)V
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setTime(IIILjava/math/BigDecimal;)V

    return-void
.end method

.method public setTime(IIII)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "millisecond"    # I

    .prologue
    invoke-virtual {p0, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setHour(I)V

    invoke-virtual {p0, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setMinute(I)V

    invoke-virtual {p0, p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setSecond(I)V

    invoke-virtual {p0, p4}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setMillisecond(I)V

    return-void
.end method

.method public setTime(IIILjava/math/BigDecimal;)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "fractional"    # Ljava/math/BigDecimal;

    .prologue
    invoke-virtual {p0, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setHour(I)V

    invoke-virtual {p0, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setMinute(I)V

    invoke-virtual {p0, p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setSecond(I)V

    invoke-virtual {p0, p4}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setFractionalSecond(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public abstract setTimezone(I)V
.end method

.method public abstract setYear(I)V
.end method

.method public abstract setYear(Ljava/math/BigInteger;)V
.end method

.method public abstract toGregorianCalendar()Ljava/util/GregorianCalendar;
.end method

.method public abstract toGregorianCalendar(Ljava/util/TimeZone;Ljava/util/Locale;Lmf/javax/xml/datatype/XMLGregorianCalendar;)Ljava/util/GregorianCalendar;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->toXMLFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toXMLFormat()Ljava/lang/String;
.end method

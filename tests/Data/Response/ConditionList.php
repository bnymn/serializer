<?php

namespace Serializer\Tests\Data\Response;

use Serializer\Collection;
use Serializer\ToArray\ToArrayInterface;
use Serializer\ToArray\ToArrayTrait;

/**
 * @Serializer\Collection("Serializer\Tests\Data\Response\ConditionItem")
 */
class ConditionList extends Collection implements ToArrayInterface
{
    use ToArrayTrait;
}
